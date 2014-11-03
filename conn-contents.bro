##!    Derived from base/protocols/conn/contents.bro to behave similarly to vortex, minus some features
@load base/utils/files

module Conn;

export {
  const extract_folder = "" &redef;
  const stream_ext = ".stream" &redef;
}

redef record connection += {
  orig_fn: string &default="";
  resp_fn: string &default="";
};

event connection_established(c: connection) &priority=-5
	{
		c$orig_fn = generate_extraction_filename(fmt("%s%s", extract_folder, "stream"), c, fmt("%s_orig%s", c$uid, stream_ext));
		local orig_f = open(c$orig_fn);
		set_contents_file(c$id, CONTENTS_ORIG, orig_f);
		
		c$resp_fn = generate_extraction_filename(fmt("%s%s", extract_folder, "stream"), c, fmt("%s_resp%s", c$uid, stream_ext));
		local resp_f = open(c$resp_fn);
		set_contents_file(c$id, CONTENTS_RESP, resp_f);
	}

# Designed to display the filename(s) of the created streams to stdout
# after every connection is cleaned up (and the file contents have "settled")
event connection_state_remove(c: connection)
{
        if(c$orig_fn != "") 
            print(c$orig_fn);

        if(c$resp_fn != "") 
            print(c$resp_fn);
}
