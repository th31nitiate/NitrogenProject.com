-module (demos_contenttype_image).
-include_lib ("nitrogen_core/include/wf.hrl").
-compile(export_all).

main() -> 
    %% Set the content-type of the image
    wf:content_type("image/png"),

    %% If we have a "download" query-string parameter set (or if the POST data
    %% contained a field called "download" set to "1"), then we also set the
    %% content-disposition header to tell the browser to download.
    %%
    case wf:q("download") of
        "1" -> wf:header("Content-Disposition", "attachement; filename=\"nitrogen.jpeg\"");
        _ -> do_nothing
    end,

    image_data().

event(_) -> ok.

image_data() -> 
    <<137,80,78,71,13,10,26,10,0,0,0,13,73,72,68,82,0,0,
        0,32,0,0,0,50,8,6,0,0,0,61,100,217,100,0,0,3,59,
        105,67,67,80,73,67,67,32,80,114,111,102,105,108,
        101,0,0,120,1,133,148,75,104,212,80,20,134,255,140,
        41,130,180,130,168,181,22,148,224,66,139,180,37,62,
        208,138,80,219,105,181,214,145,113,24,251,208,34,
        200,52,115,103,26,77,51,49,153,25,31,136,72,65,220,
        249,90,138,27,31,136,139,42,226,66,186,80,112,165,
        11,145,66,235,107,81,4,113,165,34,136,66,55,82,198,
        255,38,237,76,42,86,47,36,249,114,206,127,207,235,
        134,0,85,15,83,142,99,69,52,96,216,206,187,201,174,
        168,118,232,240,128,182,120,2,85,168,65,53,184,82,
        134,231,180,39,18,251,125,166,86,62,231,175,233,
        183,80,164,101,178,73,198,138,245,29,152,248,180,
        109,245,253,75,143,98,239,235,158,246,250,158,249,
        250,121,111,53,46,19,2,138,70,235,138,108,192,91,
        37,15,6,188,87,242,201,188,147,167,230,136,100,99,
        40,149,38,59,228,70,183,39,217,65,190,65,94,154,13,
        241,96,136,211,194,51,128,170,54,106,114,134,227,
        50,78,100,5,185,165,104,100,101,204,81,178,110,167,
        77,155,60,37,237,105,207,24,166,134,253,70,126,200,
        89,208,198,149,143,1,173,107,128,69,47,43,182,1,15,
        24,189,11,172,90,95,177,53,212,1,43,251,129,177,45,
        21,219,207,164,63,31,165,118,220,203,108,217,236,
        135,83,170,163,172,233,67,169,244,115,61,176,248,
        26,48,115,181,84,250,117,171,84,154,185,205,28,172,
        227,153,101,20,220,162,175,101,97,202,43,32,168,55,
        216,205,248,201,57,90,136,131,158,124,85,11,112,
        147,115,236,95,2,196,46,0,215,63,2,27,30,0,203,31,
        3,137,26,160,103,7,34,231,217,110,112,229,197,41,
        206,5,232,200,57,167,93,51,59,148,215,54,235,250,
        118,173,157,71,43,180,110,219,104,110,212,82,150,
        165,249,46,79,115,133,39,220,162,72,55,99,216,42,
        112,206,254,90,198,123,181,176,123,15,242,201,254,
        34,231,132,183,123,150,149,145,116,170,147,179,68,
        51,219,250,146,22,157,187,201,141,228,123,25,115,
        79,55,185,129,215,84,198,221,211,27,176,178,209,
        204,119,247,4,28,233,179,173,56,207,69,106,34,117,
        246,96,252,0,153,241,21,213,201,71,229,60,36,143,
        120,197,131,50,166,111,63,150,218,151,32,215,211,
        158,60,158,139,73,77,45,247,182,157,25,234,225,25,
        73,86,172,51,67,29,241,89,126,237,22,146,50,239,58,
        106,238,56,150,255,205,179,182,200,115,28,134,5,1,
        19,54,239,54,52,36,209,133,40,154,224,192,69,14,25,
        122,76,42,76,90,165,95,208,106,194,195,241,191,42,
        45,36,202,187,44,42,186,240,153,123,62,251,123,78,
        160,192,221,50,126,31,162,113,140,52,150,35,104,
        250,59,253,155,254,70,191,169,223,209,191,94,169,
        47,52,84,60,35,238,81,211,24,191,252,157,113,101,
        102,89,141,140,27,212,40,227,203,154,130,248,6,171,
        109,167,215,66,150,214,97,94,65,79,94,89,223,20,
        174,46,99,95,169,47,123,52,153,67,92,140,79,135,
        186,20,161,76,77,24,100,60,217,181,236,190,72,182,
        248,38,252,124,115,217,22,154,30,181,47,206,62,169,
        171,228,122,163,142,29,153,172,126,113,54,92,13,
        107,255,179,171,96,210,178,171,240,228,141,144,46,
        60,107,161,174,85,55,169,221,106,139,186,3,154,186,
        75,109,83,91,213,78,190,237,84,247,151,119,244,114,
        86,38,78,178,110,151,213,167,216,131,141,211,244,
        86,78,186,50,91,4,255,22,126,49,252,47,117,9,91,
        184,166,161,201,127,104,194,205,101,76,75,248,142,
        224,246,31,119,72,249,47,252,13,1,133,21,13,124,75,
        59,59,0,0,0,9,112,72,89,115,0,0,11,19,0,0,11,19,1,
        0,154,156,24,0,0,8,237,73,68,65,84,88,9,173,88,91,
        108,28,87,25,62,151,153,217,245,61,246,38,164,33,
        84,180,77,73,218,186,20,8,170,139,99,39,172,212,72,
        149,138,84,65,156,53,165,69,160,10,9,21,9,144,250,
        210,74,180,144,41,60,32,84,4,130,60,240,208,10,21,
        85,130,198,219,244,162,74,208,242,18,67,19,39,5,
        149,94,34,7,162,150,136,170,41,137,236,109,124,141,
        189,59,115,46,124,255,140,119,51,94,207,58,107,155,
        35,205,204,153,51,231,252,255,247,95,207,127,134,
        177,117,54,219,95,104,185,216,87,184,126,157,203,
        107,203,68,173,183,198,78,73,116,56,210,53,57,90,
        102,25,227,107,92,94,155,190,110,0,31,177,18,179,
        92,100,109,161,32,193,29,24,214,215,214,13,160,205,
        100,148,182,218,125,227,92,57,179,62,214,241,170,
        117,3,40,111,154,55,214,56,94,55,203,186,27,1,224,
        92,109,177,101,190,96,133,241,216,198,197,94,75,
        253,34,22,221,56,217,171,39,156,211,45,220,132,89,
        188,206,144,31,108,196,20,169,56,44,172,156,242,
        161,54,54,49,240,213,167,46,14,14,221,65,115,128,
        76,18,216,17,248,132,79,160,155,108,53,98,245,243,
        171,18,189,127,251,80,111,214,115,118,129,250,118,
        248,250,157,88,48,101,25,239,50,86,247,184,92,244,
        115,206,79,107,99,126,154,27,27,121,62,194,177,68,
        40,142,12,31,90,241,77,61,237,228,123,42,0,235,251,
        130,251,190,185,180,119,120,192,227,238,75,130,179,
        156,69,131,152,32,200,35,151,55,204,176,121,29,218,
        86,225,112,71,8,54,163,131,125,25,102,47,105,43,
        110,22,66,126,144,155,186,233,77,62,238,7,85,90,73,
        166,201,126,186,15,140,199,54,7,233,111,100,184,
        200,77,132,139,21,193,120,52,183,22,111,4,134,115,
        113,89,107,35,140,230,130,137,63,114,112,206,114,
        158,213,204,154,169,238,127,190,61,57,120,223,183,
        33,200,27,100,154,70,154,88,213,86,129,82,110,96,
        52,100,142,152,75,32,167,152,143,47,206,162,181,80,
        73,244,4,135,246,208,232,236,101,173,236,130,214,
        220,227,114,119,171,176,47,125,208,95,248,52,49,
        143,156,57,41,250,82,127,85,0,144,48,16,228,219,87,
        201,51,100,111,13,19,193,216,100,33,225,73,33,96,
        30,5,174,219,187,29,247,169,55,243,95,222,20,131,
        192,215,186,182,42,0,135,139,82,221,252,213,94,35,
        226,4,24,156,75,120,204,67,27,172,108,116,223,39,
        148,187,35,94,232,175,13,128,21,246,180,130,239,33,
        26,87,44,108,128,68,117,59,30,203,48,231,71,74,179,
        7,187,157,12,131,102,102,231,140,110,40,72,170,6,
        70,39,39,35,134,202,152,131,52,1,236,107,190,215,
        128,113,52,12,172,2,12,153,16,102,80,51,214,66,176,
        51,66,84,132,100,65,188,238,80,68,135,246,15,122,
        39,191,88,17,5,148,80,248,104,81,157,219,115,224,
        147,240,236,61,139,112,66,180,166,52,0,134,98,70,5,
        76,50,126,48,35,69,158,192,24,102,95,185,238,181,
        231,47,28,203,251,14,27,133,171,144,60,197,162,46,
        16,31,230,235,101,0,40,102,217,248,56,99,200,181,
        57,145,125,192,19,252,227,211,42,80,0,176,108,30,
        33,106,212,72,68,132,161,11,234,91,67,2,96,217,52,
        205,205,143,250,26,82,68,26,40,237,25,254,190,35,
        228,183,158,102,247,21,107,146,85,19,198,127,246,
        30,216,214,106,228,221,144,226,231,202,178,77,144,
        128,22,213,230,17,177,166,26,37,46,198,109,155,227,
        8,109,236,239,20,215,135,31,61,126,238,157,159,13,
        238,248,78,167,147,249,213,188,130,92,220,170,136,
        48,205,36,116,165,129,225,111,162,251,107,216,173,
        19,170,183,202,26,140,175,157,119,18,32,210,167,
        237,148,30,15,172,134,75,177,243,174,16,215,128,
        182,7,45,89,143,11,35,226,44,197,236,212,224,189,
        126,171,116,158,198,226,142,89,165,192,222,128,245,
        198,152,19,16,208,224,179,58,208,21,99,144,29,248,
        117,139,70,101,160,85,189,217,241,36,178,236,139,
        53,219,74,97,219,3,64,12,173,214,136,101,140,111,
        156,57,1,128,98,45,167,48,230,204,148,145,182,201,
        164,29,210,245,2,107,207,204,104,245,80,109,175,
        199,167,19,146,12,129,244,23,47,220,248,157,156,7,
        123,8,107,149,82,180,75,87,230,220,140,220,234,181,
        120,142,224,147,37,189,112,255,181,39,139,31,58,
        140,138,12,184,61,103,206,247,72,106,210,252,255,9,
        130,69,14,225,240,167,160,98,244,131,33,83,83,109,
        220,233,67,29,217,85,102,193,115,215,143,189,248,
        150,205,231,157,72,218,82,127,161,207,145,242,24,
        156,163,21,3,145,251,110,92,126,166,187,28,87,46,
        106,251,68,238,196,31,30,174,223,17,171,142,31,251,
        0,231,7,50,66,182,2,0,34,175,249,152,95,5,164,133,
        57,193,220,148,194,80,255,38,154,247,249,255,74,
        123,67,33,54,111,111,175,165,122,131,198,249,135,3,
        247,236,234,18,237,127,5,243,143,133,198,80,202,
        116,96,130,212,20,29,17,106,226,70,249,167,3,241,
        31,88,115,42,119,252,72,63,149,118,240,66,114,137,
        21,77,48,157,221,89,214,106,33,43,196,98,143,235,
        121,29,146,234,27,242,134,184,32,76,93,181,130,204,
        242,1,16,160,173,25,52,248,225,232,75,97,184,161,
        64,98,251,169,145,151,45,47,223,54,29,134,119,207,
        42,253,67,197,236,95,224,133,101,36,9,202,219,10,
        94,12,90,200,73,148,214,209,89,206,42,245,141,74,
        55,81,209,218,206,169,224,253,212,25,137,65,210,11,
        57,125,146,48,191,48,48,116,75,214,136,205,101,206,
        126,153,115,50,159,195,118,100,144,31,4,204,196,16,
        174,208,39,129,194,158,147,222,52,234,68,212,176,
        230,212,100,56,123,215,167,94,255,211,108,10,143,
        218,74,84,82,49,115,218,34,163,11,159,174,57,113,
        244,76,247,201,34,52,97,223,45,133,11,247,151,141,
        250,113,104,205,9,4,233,116,187,227,26,36,146,165,
        237,180,70,167,214,129,248,2,97,7,170,124,103,167,
        204,108,137,63,248,96,147,222,106,182,161,45,50,
        186,34,64,133,104,28,234,159,67,81,50,217,125,252,
        217,199,15,31,63,178,15,59,199,103,66,165,191,52,
        167,131,71,176,83,78,147,183,162,37,181,135,87,82,
        143,69,153,106,123,80,202,118,209,132,98,245,96,67,
        47,117,173,6,32,57,206,89,145,84,204,42,134,61,236,
        40,253,14,245,15,249,62,219,182,191,247,124,238,
        228,200,171,8,217,121,201,5,237,148,84,44,44,147,
        142,94,72,229,216,1,89,91,214,121,102,122,224,107,
        195,195,16,14,99,13,120,17,245,38,91,148,185,70,71,
        85,240,197,175,255,22,4,31,40,133,101,13,45,165,
        250,2,57,109,183,11,61,113,254,222,219,139,151,191,
        112,199,223,94,248,136,128,1,32,30,87,90,42,170,
        234,103,90,64,49,92,125,47,110,217,18,45,14,224,
        137,6,28,104,135,105,212,192,73,160,152,9,81,148,
        222,184,51,147,221,27,205,43,196,166,77,174,89,21,
        0,161,77,38,144,194,210,74,197,205,196,82,119,153,
        52,73,194,4,13,38,18,89,28,89,60,248,67,242,91,178,
        191,42,128,228,196,100,127,49,84,127,174,208,182,
        205,64,189,78,165,213,121,64,102,113,118,148,208,
        192,212,165,74,248,90,52,30,109,124,213,25,241,115,
        109,0,138,177,115,182,139,150,51,14,227,255,118,
        113,52,3,153,116,45,192,118,89,148,195,243,214,252,
        224,218,215,143,190,27,255,73,137,243,127,18,194,
        154,0,144,73,104,87,235,24,123,102,98,94,171,127,
        101,100,195,116,64,177,17,57,143,195,237,44,49,172,
        150,250,73,230,212,95,19,128,234,150,58,59,80,216,
        133,2,227,246,5,156,124,128,169,17,13,139,250,143,
        188,248,179,49,211,124,252,168,187,55,90,92,55,109,
        233,117,41,161,204,27,126,51,10,214,109,136,4,228,
        139,244,72,32,109,145,113,16,43,132,18,109,52,186,
        215,223,214,6,0,251,56,17,232,116,220,33,36,35,242,
        114,122,95,129,32,54,21,115,145,146,23,90,173,125,
        153,214,228,243,249,40,185,81,63,217,86,44,78,126,
        76,235,143,244,246,122,251,187,111,61,9,229,238,
        198,49,156,234,246,52,33,52,42,108,25,106,243,247,
        205,99,71,250,124,152,26,87,42,128,180,197,105,124,
        161,74,63,154,187,191,231,182,155,160,250,91,105,
        103,92,98,78,233,152,174,90,35,169,218,113,234,67,
        164,60,73,131,135,10,75,149,80,109,198,149,78,173,
        44,191,50,148,222,27,205,143,10,152,145,54,228,131,
        112,64,111,74,5,196,84,182,67,82,170,166,231,84,72,
        38,167,56,33,231,67,22,84,15,229,198,158,125,18,
        175,200,198,124,25,192,36,135,166,0,128,48,231,216,
        3,206,247,125,37,151,97,114,8,201,37,226,212,6,41,
        113,226,121,1,170,70,73,47,126,130,121,45,81,138,
        198,137,167,162,204,89,98,84,28,142,170,161,134,0,
        154,51,193,82,14,247,92,247,78,164,230,91,40,11,18,
        38,10,51,72,255,214,182,177,231,126,129,147,240,60,
        185,36,130,63,196,111,29,156,78,217,209,169,189,
        247,30,222,119,54,75,255,17,73,59,169,254,214,28,0,
        162,128,6,117,239,70,246,195,137,23,122,133,250,
        103,160,118,201,196,99,23,6,134,31,71,206,95,220,
        234,101,89,143,147,113,17,37,78,135,148,238,166,
        108,199,119,51,93,225,35,209,226,188,159,186,107,
        54,101,130,136,64,116,227,56,215,69,210,208,81,219,
        129,84,172,162,141,108,147,242,49,72,253,232,148,
        174,168,208,216,29,136,125,7,218,144,76,77,247,64,
        67,167,162,165,240,159,232,89,119,91,19,0,156,231,
        38,59,145,126,113,218,117,23,140,34,77,176,16,119,
        15,255,68,240,51,243,31,237,199,126,255,106,245,
        152,95,199,7,250,247,83,1,52,101,2,42,213,136,224,
        123,11,103,159,184,24,44,28,68,36,188,130,98,114,
        142,198,160,9,142,223,115,84,135,199,191,97,138,
        227,14,21,46,180,249,28,163,231,85,210,253,255,0,
        186,255,230,241,118,28,72,165,0,0,0,0,73,69,78,68,
        174,66,96,130>>.
