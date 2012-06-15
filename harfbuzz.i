%module harfbuzz
%{
#include "harfbuzz/hb-ot.h"
#include "harfbuzz/hb-ft.h"
#include "harfbuzz/hb-glib.h"
#include "harfbuzz/hb-icu.h"
%}


%include "harfbuzz/hb-common.h";
%include "harfbuzz/hb-unicode.h";
%include "harfbuzz/hb-blob.h";
%include "harfbuzz/hb-buffer.h";
%include "harfbuzz/hb-font.h";
%include "harfbuzz/hb-ot-shape.h";
%include "harfbuzz/hb-version.h";
%include "harfbuzz/hb.h";

%include "harfbuzz/hb-ft.h";
%include "harfbuzz/hb-glib.h";

%include "harfbuzz/hb-icu.h";
%include "harfbuzz/hb-ot.h";
%include "harfbuzz/hb-ot-layout.h";
%include "harfbuzz/hb-ot-tag.h";
%include "harfbuzz/hb-shape.h";



