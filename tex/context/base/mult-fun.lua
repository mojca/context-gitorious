return {
    internals = {
        --
        "nocolormodel", "greycolormodel", "graycolormodel", "rgbcolormodel", "cmykcolormodel",
        "shadefactor",
        "textextoffset",
        "normaltransparent", "multiplytransparent", "screentransparent", "overlaytransparent", "softlighttransparent",
        "hardlighttransparent", "colordodgetransparent", "colorburntransparent", "darkentransparent", "lightentransparent",
        "differencetransparent", "exclusiontransparent", "huetransparent", "saturationtransparent", "colortransparent", "luminositytransparent",
-- "originlength", "tickstep ", "ticklength",
-- "autoarrows", "ahfactor",
-- "angleoffset", anglelength", anglemethod",
        "metapostversion",
        "maxdimensions",
    },
    commands = {
        --
        "sqr", "log", "ln", "exp", "inv", "pow", "pi", "radian",
        "tand", "cotd", "sin", "cos", "tan", "cot", "atan", "asin", "acos",
        "invsin", "invcos", "acosh", "asinh", "sinh", "cosh",
        "paired", "tripled",
        "unitcircle", "fulldiamond", "unitdiamond", "fullsquare",
     -- "halfcircle", "quartercircle",
        "llcircle", "lrcircle", "urcircle", "ulcircle",
        "tcircle", "bcircle", "lcircle", "rcircle",
        "lltriangle", "lrtriangle", "urtriangle", "ultriangle",
        "smoothed", "cornered", "superellipsed", "randomized", "squeezed", "enlonged", "shortened",
        "punked", "curved", "unspiked", "simplified", "blownup", "stretched",
        "enlarged", "leftenlarged", "topenlarged", "rightenlarged", "bottomenlarged",
        "crossed", "laddered", "randomshifted", "interpolated", "paralleled", "cutends", "peepholed",
        "llenlarged", "lrenlarged", "urenlarged", "ulenlarged",
        "llmoved", "lrmoved", "urmoved", "ulmoved",
        "rightarrow", "leftarrow", "centerarrow",
        "boundingbox", "innerboundingbox", "outerboundingbox", "pushboundingbox", "popboundingbox",
        "bottomboundary", "leftboundary", "topboundary", "rightboundary",
        "xsized", "ysized", "xysized", "sized", "xyscaled",
        "intersection_point", "intersection_found", "penpoint",
        "bbwidth", "bbheight",
        "withshade", "withlinearshading", "withcircularshading", "withfromshadecolor", "withtoshadecolor", "withshading", "shadedinto",
        "withcircularshade", "withlinearshade",
        "cmyk", "spotcolor", "multitonecolor", "namedcolor",
        "drawfill", "undrawfill",
        "inverted", "uncolored", "softened", "grayed", "greyed",
        "onlayer",
        "along",
        "graphictext", "loadfigure", "externalfigure", "withmask", "figure", "register", "bitmapimage",
        "colordecimals", "ddecimal", "dddecimal", "ddddecimal",
        "textext", "thetextext", "rawtextext", "textextoffset", "verbatim", "thelabel", "label", "autoalign",
        "transparent", "withtransparency",
        "property", "properties", "withproperties",
        "asgroup",
        "infont", -- redefined usign textext
     -- "property", "withproperties", "properties", -- not yet
        "set_linear_vector", "linear_shade", "define_linear_shade", "define_circular_linear_shade", "define_sampled_linear_shade",
        "set_circular_vector", "circular_shade", "define_circular_shade", "define_circular_linear_shade", "define_sampled_circular_shade",
        "space", "CRLF",
        "grayscale", "greyscale", "withgray", "withgrey",
        "colorpart",
        "readfile",
        "clearxy", "unitvector", "center", -- redefined
        "epsed", "anchored",
        "originpath", "infinite",
        "break",
        "xstretched", "ystretched", "snapped",
        --
        "pathconnectors", "function", "constructedpath", "constructedpairs",
        "punkedfunction", "curvedfunction", "tightfunction",
        "punkedpath", "curvedpath", "tightpath",
        "punkedpairs", "curvedpairs", "tightpairs",
        --
        "evenly", "oddly",
        --
        "condition",
        --
        "pushcurrentpicture", "popcurrentpicture",
        --
        "arrowpath",
-- "colorlike",  "dowithpath", "rangepath", "straightpath", "addbackground",
-- "cleanstring", "asciistring", "setunstringed", "getunstringed", "unstringed",
-- "showgrid",
-- "phantom",
-- "xshifted", "yshifted",
-- "drawarrowpath", "midarrowhead", "arrowheadonpath",
-- "drawxticks", "drawyticks", "drawticks",
-- "pointarrow",
-- "thefreelabel", "freelabel", "freedotlabel",
-- "anglebetween", "colorcircle",
-- "remapcolors", "normalcolors", "resetcolormap", "remapcolor", "remappedcolor",
-- "recolor", "refill", "redraw", "retext", "untext", "restroke", "reprocess", "repathed",
        "tensecircle", "roundedsquare",
        "colortype", "whitecolor", "blackcolor",
        --
-- "swappointlabels",
        "normalfill", "normaldraw", "visualizepaths", "naturalizepaths",
        "drawboundary", "drawwholepath", "visualizeddraw", "visualizedfill", "draworigin", "drawboundingbox",
        "drawpath", "drawpoint", "drawpoints", "drawcontrolpoints", "drawcontrollines", "drawpointlabels",
        "drawlineoptions", "drawpointoptions", "drawcontroloptions", "drawlabeloptions", "draworiginoptions", "drawboundoptions", "drawpathoptions", "resetdrawoptions",
        --
        "decorated", "redecorated", "undecorated",
    },
}
