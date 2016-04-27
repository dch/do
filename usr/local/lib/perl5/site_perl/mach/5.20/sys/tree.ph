require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_TREE_H_)) {
    eval 'sub _SYS_TREE_H_ () {1;}' unless defined(&_SYS_TREE_H_);
    require 'sys/cdefs.ph';
    eval 'sub SPLAY_HEAD {
        my($name, $type) = @_;
	    eval q(\'struct name\' { \'struct type\' * &sph_root; });
    }' unless defined(&SPLAY_HEAD);
    eval 'sub SPLAY_INITIALIZER {
        my($root) = @_;
	    eval q({  &NULL });
    }' unless defined(&SPLAY_INITIALIZER);
    eval 'sub SPLAY_INIT {
        my($root) = @_;
	    eval q( &do { ($root)-> &sph_root =  &NULL; }  &while ( 0));
    }' unless defined(&SPLAY_INIT);
    eval 'sub SPLAY_ENTRY {
        my($type) = @_;
	    eval q(\'struct struct\' { \'struct type\' * &spe_left; \'struct type\' * &spe_right; });
    }' unless defined(&SPLAY_ENTRY);
    eval 'sub SPLAY_LEFT {
        my($elm, $field) = @_;
	    eval q(($elm)-> ($field->{spe_left}));
    }' unless defined(&SPLAY_LEFT);
    eval 'sub SPLAY_RIGHT {
        my($elm, $field) = @_;
	    eval q(($elm)-> ($field->{spe_right}));
    }' unless defined(&SPLAY_RIGHT);
    eval 'sub SPLAY_ROOT {
        my($head) = @_;
	    eval q(($head)-> &sph_root);
    }' unless defined(&SPLAY_ROOT);
    eval 'sub SPLAY_EMPTY {
        my($head) = @_;
	    eval q(( &SPLAY_ROOT($head) ==  &NULL));
    }' unless defined(&SPLAY_EMPTY);
    eval 'sub SPLAY_ROTATE_RIGHT {
        my($head, $tmp, $field) = @_;
	    eval q( &do {  &SPLAY_LEFT(($head)-> &sph_root, $field) =  &SPLAY_RIGHT($tmp, $field);  &SPLAY_RIGHT($tmp, $field) = ($head)-> &sph_root; ($head)-> &sph_root = $tmp; }  &while ( 0));
    }' unless defined(&SPLAY_ROTATE_RIGHT);
    eval 'sub SPLAY_ROTATE_LEFT {
        my($head, $tmp, $field) = @_;
	    eval q( &do {  &SPLAY_RIGHT(($head)-> &sph_root, $field) =  &SPLAY_LEFT($tmp, $field);  &SPLAY_LEFT($tmp, $field) = ($head)-> &sph_root; ($head)-> &sph_root = $tmp; }  &while ( 0));
    }' unless defined(&SPLAY_ROTATE_LEFT);
    eval 'sub SPLAY_LINKLEFT {
        my($head, $tmp, $field) = @_;
	    eval q( &do {  &SPLAY_LEFT($tmp, $field) = ($head)-> &sph_root; $tmp = ($head)-> &sph_root; ($head)-> &sph_root =  &SPLAY_LEFT(($head)-> &sph_root, $field); }  &while ( 0));
    }' unless defined(&SPLAY_LINKLEFT);
    eval 'sub SPLAY_LINKRIGHT {
        my($head, $tmp, $field) = @_;
	    eval q( &do {  &SPLAY_RIGHT($tmp, $field) = ($head)-> &sph_root; $tmp = ($head)-> &sph_root; ($head)-> &sph_root =  &SPLAY_RIGHT(($head)-> &sph_root, $field); }  &while ( 0));
    }' unless defined(&SPLAY_LINKRIGHT);
    eval 'sub SPLAY_ASSEMBLE {
        my($head, $node, $left, $right, $field) = @_;
	    eval q( &do {  &SPLAY_RIGHT($left, $field) =  &SPLAY_LEFT(($head)-> &sph_root, $field);  &SPLAY_LEFT($right, $field) =  &SPLAY_RIGHT(($head)-> &sph_root, $field);  &SPLAY_LEFT(($head)-> &sph_root, $field) =  &SPLAY_RIGHT($node, $field);  &SPLAY_RIGHT(($head)-> &sph_root, $field) =  &SPLAY_LEFT($node, $field); }  &while ( 0));
    }' unless defined(&SPLAY_ASSEMBLE);
    eval 'sub SPLAY_PROTOTYPE {
        my($name, $type, $field, $cmp) = @_;
	    eval q( &void $name &_SPLAY(\'struct name\' *, \'struct type\' *);  &void $name &_SPLAY_MINMAX(\'struct name\' *, \'int\'); \'struct type\' *$name &_SPLAY_INSERT(\'struct name\' *, \'struct type\' *); \'struct type\' *$name &_SPLAY_REMOVE(\'struct name\' *, \'struct type\' *);  &static  &__inline \'struct type\' * $name &_SPLAY_FIND(\'struct name\' * &head, \'struct type\' * &elm) {  &if ( &SPLAY_EMPTY( &head))  &return( &NULL); $name &_SPLAY( &head,  &elm);  &if (($cmp)( &elm, ( &head)-> &sph_root) == 0)  &return ( ($head->{sph_root}));  &return ( &NULL); }  &static  &__inline \'struct type\' * $name &_SPLAY_NEXT(\'struct name\' * &head, \'struct type\' * &elm) { $name &_SPLAY( &head,  &elm);  &if ( &SPLAY_RIGHT( &elm, $field) !=  &NULL) {  &elm =  &SPLAY_RIGHT( &elm, $field);  &while ( &SPLAY_LEFT( &elm, $field) !=  &NULL) {  &elm =  &SPLAY_LEFT( &elm, $field); } }  &else  &elm =  &NULL;  &return ( &elm); }  &static  &__inline \'struct type\' * $name &_SPLAY_MIN_MAX(\'struct name\' * &head, \'int\'  &val) { $name &_SPLAY_MINMAX( &head,  &val);  &return ( &SPLAY_ROOT( &head)); });
    }' unless defined(&SPLAY_PROTOTYPE);
    eval 'sub SPLAY_GENERATE {
        my($name, $type, $field, $cmp) = @_;
	    eval q(\'struct type\' * $name &_SPLAY_INSERT(\'struct name\' * &head, \'struct type\' * &elm) {  &if ( &SPLAY_EMPTY( &head)) {  &SPLAY_LEFT( &elm, $field) =  &SPLAY_RIGHT( &elm, $field) =  &NULL; }  &else { \'int\'  &__comp; $name &_SPLAY( &head,  &elm);  &__comp = ($cmp)( &elm, ( &head)-> &sph_root);  &if( &__comp < 0) {  &SPLAY_LEFT( &elm, $field) =  &SPLAY_LEFT(( &head)-> &sph_root, $field);  &SPLAY_RIGHT( &elm, $field) = ( &head)-> &sph_root;  &SPLAY_LEFT(( &head)-> &sph_root, $field) =  &NULL; }  &else  &if ( &__comp > 0) {  &SPLAY_RIGHT( &elm, $field) =  &SPLAY_RIGHT(( &head)-> &sph_root, $field);  &SPLAY_LEFT( &elm, $field) = ( &head)-> &sph_root;  &SPLAY_RIGHT(( &head)-> &sph_root, $field) =  &NULL; }  &else  &return (( &head)-> &sph_root); } ( &head)-> &sph_root = ( &elm);  &return ( &NULL); } \'struct type\' * $name &_SPLAY_REMOVE(\'struct name\' * &head, \'struct type\' * &elm) { \'struct type\' * &__tmp;  &if ( &SPLAY_EMPTY( &head))  &return ( &NULL); $name &_SPLAY( &head,  &elm);  &if (($cmp)( &elm, ( &head)-> &sph_root) == 0) {  &if ( &SPLAY_LEFT(( &head)-> &sph_root, $field) ==  &NULL) { ( &head)-> &sph_root =  &SPLAY_RIGHT(( &head)-> &sph_root, $field); }  &else {  &__tmp =  &SPLAY_RIGHT(( &head)-> &sph_root, $field); ( &head)-> &sph_root =  &SPLAY_LEFT(( &head)-> &sph_root, $field); $name &_SPLAY( &head,  &elm);  &SPLAY_RIGHT(( &head)-> &sph_root, $field) =  &__tmp; }  &return ( &elm); }  &return ( &NULL); }  &void $name &_SPLAY(\'struct name\' * &head, \'struct type\' * &elm) { \'struct type\'  &__node, * &__left, * &__right, * &__tmp; \'int\'  &__comp;  &SPLAY_LEFT(& &__node, $field) =  &SPLAY_RIGHT(& &__node, $field) =  &NULL;  &__left =  &__right = & &__node;  &while (( &__comp = ($cmp)( &elm, ( &head)-> &sph_root)) != 0) {  &if ( &__comp < 0) {  &__tmp =  &SPLAY_LEFT(( &head)-> &sph_root, $field);  &if ( &__tmp ==  &NULL)  &break;  &if (($cmp)( &elm,  &__tmp) < 0){  &SPLAY_ROTATE_RIGHT( &head,  &__tmp, $field);  &if ( &SPLAY_LEFT(( &head)-> &sph_root, $field) ==  &NULL)  &break; }  &SPLAY_LINKLEFT( &head,  &__right, $field); }  &else  &if ( &__comp > 0) {  &__tmp =  &SPLAY_RIGHT(( &head)-> &sph_root, $field);  &if ( &__tmp ==  &NULL)  &break;  &if (($cmp)( &elm,  &__tmp) > 0){  &SPLAY_ROTATE_LEFT( &head,  &__tmp, $field);  &if ( &SPLAY_RIGHT(( &head)-> &sph_root, $field) ==  &NULL)  &break; }  &SPLAY_LINKRIGHT( &head,  &__left, $field); } }  &SPLAY_ASSEMBLE( &head, & &__node,  &__left,  &__right, $field); }  &void $name &_SPLAY_MINMAX(\'struct name\' * &head, \'int\'  &__comp) { \'struct type\'  &__node, * &__left, * &__right, * &__tmp;  &SPLAY_LEFT(& &__node, $field) =  &SPLAY_RIGHT(& &__node, $field) =  &NULL;  &__left =  &__right = & &__node;  &while (1) {  &if ( &__comp < 0) {  &__tmp =  &SPLAY_LEFT(( &head)-> &sph_root, $field);  &if ( &__tmp ==  &NULL)  &break;  &if ( &__comp < 0){  &SPLAY_ROTATE_RIGHT( &head,  &__tmp, $field);  &if ( &SPLAY_LEFT(( &head)-> &sph_root, $field) ==  &NULL)  &break; }  &SPLAY_LINKLEFT( &head,  &__right, $field); }  &else  &if ( &__comp > 0) {  &__tmp =  &SPLAY_RIGHT(( &head)-> &sph_root, $field);  &if ( &__tmp ==  &NULL)  &break;  &if ( &__comp > 0) {  &SPLAY_ROTATE_LEFT( &head,  &__tmp, $field);  &if ( &SPLAY_RIGHT(( &head)-> &sph_root, $field) ==  &NULL)  &break; }  &SPLAY_LINKRIGHT( &head,  &__left, $field); } }  &SPLAY_ASSEMBLE( &head, & &__node,  &__left,  &__right, $field); });
    }' unless defined(&SPLAY_GENERATE);
    eval 'sub SPLAY_NEGINF () {-1;}' unless defined(&SPLAY_NEGINF);
    eval 'sub SPLAY_INF () {1;}' unless defined(&SPLAY_INF);
    eval 'sub SPLAY_INSERT {
        my($name, $x, $y) = @_;
	    eval q($name &_SPLAY_INSERT($x, $y));
    }' unless defined(&SPLAY_INSERT);
    eval 'sub SPLAY_REMOVE {
        my($name, $x, $y) = @_;
	    eval q($name &_SPLAY_REMOVE($x, $y));
    }' unless defined(&SPLAY_REMOVE);
    eval 'sub SPLAY_FIND {
        my($name, $x, $y) = @_;
	    eval q($name &_SPLAY_FIND($x, $y));
    }' unless defined(&SPLAY_FIND);
    eval 'sub SPLAY_NEXT {
        my($name, $x, $y) = @_;
	    eval q($name &_SPLAY_NEXT($x, $y));
    }' unless defined(&SPLAY_NEXT);
    eval 'sub SPLAY_MIN {
        my($name, $x) = @_;
	    eval q(( &SPLAY_EMPTY($x) ?  &NULL : $name &_SPLAY_MIN_MAX($x,  &SPLAY_NEGINF)));
    }' unless defined(&SPLAY_MIN);
    eval 'sub SPLAY_MAX {
        my($name, $x) = @_;
	    eval q(( &SPLAY_EMPTY($x) ?  &NULL : $name &_SPLAY_MIN_MAX($x,  &SPLAY_INF)));
    }' unless defined(&SPLAY_MAX);
    eval 'sub SPLAY_FOREACH {
        my($x, $name, $head) = @_;
	    eval q( &for (($x) =  &SPLAY_MIN($name, $head); ($x) !=  &NULL; ($x) =  &SPLAY_NEXT($name, $head, $x)));
    }' unless defined(&SPLAY_FOREACH);
    eval 'sub RB_HEAD {
        my($name, $type) = @_;
	    eval q(\'struct name\' { \'struct type\' * &rbh_root; });
    }' unless defined(&RB_HEAD);
    eval 'sub RB_INITIALIZER {
        my($root) = @_;
	    eval q({  &NULL });
    }' unless defined(&RB_INITIALIZER);
    eval 'sub RB_INIT {
        my($root) = @_;
	    eval q( &do { ($root)-> &rbh_root =  &NULL; }  &while ( 0));
    }' unless defined(&RB_INIT);
    eval 'sub RB_BLACK () {0;}' unless defined(&RB_BLACK);
    eval 'sub RB_RED () {1;}' unless defined(&RB_RED);
    eval 'sub RB_ENTRY {
        my($type) = @_;
	    eval q(\'struct struct\' { \'struct type\' * &rbe_left; \'struct type\' * &rbe_right; \'struct type\' * &rbe_parent; \'int\'  &rbe_color; });
    }' unless defined(&RB_ENTRY);
    eval 'sub RB_LEFT {
        my($elm, $field) = @_;
	    eval q(($elm)-> ($field->{rbe_left}));
    }' unless defined(&RB_LEFT);
    eval 'sub RB_RIGHT {
        my($elm, $field) = @_;
	    eval q(($elm)-> ($field->{rbe_right}));
    }' unless defined(&RB_RIGHT);
    eval 'sub RB_PARENT {
        my($elm, $field) = @_;
	    eval q(($elm)-> ($field->{rbe_parent}));
    }' unless defined(&RB_PARENT);
    eval 'sub RB_COLOR {
        my($elm, $field) = @_;
	    eval q(($elm)-> ($field->{rbe_color}));
    }' unless defined(&RB_COLOR);
    eval 'sub RB_ROOT {
        my($head) = @_;
	    eval q(($head)-> &rbh_root);
    }' unless defined(&RB_ROOT);
    eval 'sub RB_EMPTY {
        my($head) = @_;
	    eval q(( &RB_ROOT($head) ==  &NULL));
    }' unless defined(&RB_EMPTY);
    eval 'sub RB_SET {
        my($elm, $parent, $field) = @_;
	    eval q( &do {  &RB_PARENT($elm, $field) = $parent;  &RB_LEFT($elm, $field) =  &RB_RIGHT($elm, $field) =  &NULL;  &RB_COLOR($elm, $field) =  &RB_RED; }  &while ( 0));
    }' unless defined(&RB_SET);
    eval 'sub RB_SET_BLACKRED {
        my($black, $red, $field) = @_;
	    eval q( &do {  &RB_COLOR($black, $field) =  &RB_BLACK;  &RB_COLOR($red, $field) =  &RB_RED; }  &while ( 0));
    }' unless defined(&RB_SET_BLACKRED);
    unless(defined(&RB_AUGMENT)) {
	eval 'sub RB_AUGMENT {
	    my($x) = @_;
    	    eval q( &do {}  &while (0));
	}' unless defined(&RB_AUGMENT);
    }
    eval 'sub RB_ROTATE_LEFT {
        my($head, $elm, $tmp, $field) = @_;
	    eval q( &do { ($tmp) =  &RB_RIGHT($elm, $field);  &if (( &RB_RIGHT($elm, $field) =  &RB_LEFT($tmp, $field)) !=  &NULL) {  &RB_PARENT( &RB_LEFT($tmp, $field), $field) = ($elm); }  &RB_AUGMENT($elm);  &if (( &RB_PARENT($tmp, $field) =  &RB_PARENT($elm, $field)) !=  &NULL) {  &if (($elm) ==  &RB_LEFT( &RB_PARENT($elm, $field), $field))  &RB_LEFT( &RB_PARENT($elm, $field), $field) = ($tmp);  &else  &RB_RIGHT( &RB_PARENT($elm, $field), $field) = ($tmp); }  &else ($head)-> &rbh_root = ($tmp);  &RB_LEFT($tmp, $field) = ($elm);  &RB_PARENT($elm, $field) = ($tmp);  &RB_AUGMENT($tmp);  &if (( &RB_PARENT($tmp, $field)))  &RB_AUGMENT( &RB_PARENT($tmp, $field)); }  &while ( 0));
    }' unless defined(&RB_ROTATE_LEFT);
    eval 'sub RB_ROTATE_RIGHT {
        my($head, $elm, $tmp, $field) = @_;
	    eval q( &do { ($tmp) =  &RB_LEFT($elm, $field);  &if (( &RB_LEFT($elm, $field) =  &RB_RIGHT($tmp, $field)) !=  &NULL) {  &RB_PARENT( &RB_RIGHT($tmp, $field), $field) = ($elm); }  &RB_AUGMENT($elm);  &if (( &RB_PARENT($tmp, $field) =  &RB_PARENT($elm, $field)) !=  &NULL) {  &if (($elm) ==  &RB_LEFT( &RB_PARENT($elm, $field), $field))  &RB_LEFT( &RB_PARENT($elm, $field), $field) = ($tmp);  &else  &RB_RIGHT( &RB_PARENT($elm, $field), $field) = ($tmp); }  &else ($head)-> &rbh_root = ($tmp);  &RB_RIGHT($tmp, $field) = ($elm);  &RB_PARENT($elm, $field) = ($tmp);  &RB_AUGMENT($tmp);  &if (( &RB_PARENT($tmp, $field)))  &RB_AUGMENT( &RB_PARENT($tmp, $field)); }  &while ( 0));
    }' unless defined(&RB_ROTATE_RIGHT);
    eval 'sub RB_PROTOTYPE {
        my($name, $type, $field, $cmp) = @_;
	    eval q( &RB_PROTOTYPE_INTERNAL($name, $type, $field, $cmp,));
    }' unless defined(&RB_PROTOTYPE);
    eval 'sub RB_PROTOTYPE_STATIC {
        my($name, $type, $field, $cmp) = @_;
	    eval q( &RB_PROTOTYPE_INTERNAL($name, $type, $field, $cmp,  &__unused  &static));
    }' unless defined(&RB_PROTOTYPE_STATIC);
    eval 'sub RB_PROTOTYPE_INTERNAL {
        my($name, $type, $field, $cmp, $attr) = @_;
	    eval q($attr  &void $name &_RB_INSERT_COLOR(\'struct name\' *, \'struct type\' *); $attr  &void $name &_RB_REMOVE_COLOR(\'struct name\' *, \'struct type\' *, \'struct type\' *);$attr \'struct type\' *$name &_RB_REMOVE(\'struct name\' *, \'struct type\' *); $attr \'struct type\' *$name &_RB_INSERT(\'struct name\' *, \'struct type\' *); $attr \'struct type\' *$name &_RB_FIND(\'struct name\' *, \'struct type\' *); $attr \'struct type\' *$name &_RB_NFIND(\'struct name\' *, \'struct type\' *); $attr \'struct type\' *$name &_RB_NEXT; $attr \'struct type\' *$name &_RB_PREV; $attr \'struct type\' *$name &_RB_MINMAX(\'struct name\' *, \'int\'););
    }' unless defined(&RB_PROTOTYPE_INTERNAL);
    eval 'sub RB_GENERATE {
        my($name, $type, $field, $cmp) = @_;
	    eval q( &RB_GENERATE_INTERNAL($name, $type, $field, $cmp,));
    }' unless defined(&RB_GENERATE);
    eval 'sub RB_GENERATE_STATIC {
        my($name, $type, $field, $cmp) = @_;
	    eval q( &RB_GENERATE_INTERNAL($name, $type, $field, $cmp,  &__unused  &static));
    }' unless defined(&RB_GENERATE_STATIC);
    eval 'sub RB_GENERATE_INTERNAL {
        my($name, $type, $field, $cmp, $attr) = @_;
	    eval q($attr  &void $name &_RB_INSERT_COLOR(\'struct name\' * &head, \'struct type\' * &elm) { \'struct type\' * &parent, * &gparent, * &tmp;  &while (( &parent =  &RB_PARENT( &elm, $field)) !=  &NULL  &&  &RB_COLOR( &parent, $field) ==  &RB_RED) {  &gparent =  &RB_PARENT( &parent, $field);  &if ( &parent ==  &RB_LEFT( &gparent, $field)) {  &tmp =  &RB_RIGHT( &gparent, $field);  &if ( &tmp  &&  &RB_COLOR( &tmp, $field) ==  &RB_RED) {  &RB_COLOR( &tmp, $field) =  &RB_BLACK;  &RB_SET_BLACKRED( &parent,  &gparent, $field);  &elm =  &gparent;  &continue; }  &if ( &RB_RIGHT( &parent, $field) ==  &elm) {  &RB_ROTATE_LEFT( &head,  &parent,  &tmp, $field);  &tmp =  &parent;  &parent =  &elm;  &elm =  &tmp; }  &RB_SET_BLACKRED( &parent,  &gparent, $field);  &RB_ROTATE_RIGHT( &head,  &gparent,  &tmp, $field); }  &else {  &tmp =  &RB_LEFT( &gparent, $field);  &if ( &tmp  &&  &RB_COLOR( &tmp, $field) ==  &RB_RED) {  &RB_COLOR( &tmp, $field) =  &RB_BLACK;  &RB_SET_BLACKRED( &parent,  &gparent, $field);  &elm =  &gparent;  &continue; }  &if ( &RB_LEFT( &parent, $field) ==  &elm) {  &RB_ROTATE_RIGHT( &head,  &parent,  &tmp, $field);  &tmp =  &parent;  &parent =  &elm;  &elm =  &tmp; }  &RB_SET_BLACKRED( &parent,  &gparent, $field);  &RB_ROTATE_LEFT( &head,  &gparent,  &tmp, $field); } }  &RB_COLOR( ($head->{rbh_root}), $field) =  &RB_BLACK; } $attr  &void $name &_RB_REMOVE_COLOR(\'struct name\' * &head, \'struct type\' * &parent, \'struct type\' * &elm) { \'struct type\' * &tmp;  &while (( &elm ==  &NULL ||  &RB_COLOR( &elm, $field) ==  &RB_BLACK)  &&  &elm !=  &RB_ROOT( &head)) {  &if ( &RB_LEFT( &parent, $field) ==  &elm) {  &tmp =  &RB_RIGHT( &parent, $field);  &if ( &RB_COLOR( &tmp, $field) ==  &RB_RED) {  &RB_SET_BLACKRED( &tmp,  &parent, $field);  &RB_ROTATE_LEFT( &head,  &parent,  &tmp, $field);  &tmp =  &RB_RIGHT( &parent, $field); }  &if (( &RB_LEFT( &tmp, $field) ==  &NULL ||  &RB_COLOR( &RB_LEFT( &tmp, $field), $field) ==  &RB_BLACK)  && ( &RB_RIGHT( &tmp, $field) ==  &NULL ||  &RB_COLOR( &RB_RIGHT( &tmp, $field), $field) ==  &RB_BLACK)) {  &RB_COLOR( &tmp, $field) =  &RB_RED;  &elm =  &parent;  &parent =  &RB_PARENT( &elm, $field); }  &else {  &if ( &RB_RIGHT( &tmp, $field) ==  &NULL ||  &RB_COLOR( &RB_RIGHT( &tmp, $field), $field) ==  &RB_BLACK) { \'struct type\' * &oleft;  &if (( &oleft =  &RB_LEFT( &tmp, $field)) !=  &NULL)  &RB_COLOR( &oleft, $field) =  &RB_BLACK;  &RB_COLOR( &tmp, $field) =  &RB_RED;  &RB_ROTATE_RIGHT( &head,  &tmp,  &oleft, $field);  &tmp =  &RB_RIGHT( &parent, $field); }  &RB_COLOR( &tmp, $field) =  &RB_COLOR( &parent, $field);  &RB_COLOR( &parent, $field) =  &RB_BLACK;  &if ( &RB_RIGHT( &tmp, $field))  &RB_COLOR( &RB_RIGHT( &tmp, $field), $field) =  &RB_BLACK;  &RB_ROTATE_LEFT( &head,  &parent,  &tmp, $field);  &elm =  &RB_ROOT( &head);  &break; } }  &else {  &tmp =  &RB_LEFT( &parent, $field);  &if ( &RB_COLOR( &tmp, $field) ==  &RB_RED) {  &RB_SET_BLACKRED( &tmp,  &parent, $field);  &RB_ROTATE_RIGHT( &head,  &parent,  &tmp, $field);  &tmp =  &RB_LEFT( &parent, $field); }  &if (( &RB_LEFT( &tmp, $field) ==  &NULL ||  &RB_COLOR( &RB_LEFT( &tmp, $field), $field) ==  &RB_BLACK)  && ( &RB_RIGHT( &tmp, $field) ==  &NULL ||  &RB_COLOR( &RB_RIGHT( &tmp, $field), $field) ==  &RB_BLACK)) {  &RB_COLOR( &tmp, $field) =  &RB_RED;  &elm =  &parent;  &parent =  &RB_PARENT( &elm, $field); }  &else {  &if ( &RB_LEFT( &tmp, $field) ==  &NULL ||  &RB_COLOR( &RB_LEFT( &tmp, $field), $field) ==  &RB_BLACK) { \'struct type\' * &oright;  &if (( &oright =  &RB_RIGHT( &tmp, $field)) !=  &NULL)  &RB_COLOR( &oright, $field) =  &RB_BLACK;  &RB_COLOR( &tmp, $field) =  &RB_RED;  &RB_ROTATE_LEFT( &head,  &tmp,  &oright, $field);  &tmp =  &RB_LEFT( &parent, $field); }  &RB_COLOR( &tmp, $field) =  &RB_COLOR( &parent, $field);  &RB_COLOR( &parent, $field) =  &RB_BLACK;  &if ( &RB_LEFT( &tmp, $field))  &RB_COLOR( &RB_LEFT( &tmp, $field), $field) =  &RB_BLACK;  &RB_ROTATE_RIGHT( &head,  &parent,  &tmp, $field);  &elm =  &RB_ROOT( &head);  &break; } } }  &if ( &elm)  &RB_COLOR( &elm, $field) =  &RB_BLACK; } $attr \'struct type\' * $name &_RB_REMOVE(\'struct name\' * &head, \'struct type\' * &elm) { \'struct type\' * &child, * &parent, * &old =  &elm; \'int\'  &color;  &if ( &RB_LEFT( &elm, $field) ==  &NULL)  &child =  &RB_RIGHT( &elm, $field);  &else  &if ( &RB_RIGHT( &elm, $field) ==  &NULL)  &child =  &RB_LEFT( &elm, $field);  &else { \'struct type\' * &left;  &elm =  &RB_RIGHT( &elm, $field);  &while (( &left =  &RB_LEFT( &elm, $field)) !=  &NULL)  &elm =  &left;  &child =  &RB_RIGHT( &elm, $field);  &parent =  &RB_PARENT( &elm, $field);  &color =  &RB_COLOR( &elm, $field);  &if ( &child)  &RB_PARENT( &child, $field) =  &parent;  &if ( &parent) {  &if ( &RB_LEFT( &parent, $field) ==  &elm)  &RB_LEFT( &parent, $field) =  &child;  &else  &RB_RIGHT( &parent, $field) =  &child;  &RB_AUGMENT( &parent); }  &else  &RB_ROOT( &head) =  &child;  &if ( &RB_PARENT( &elm, $field) ==  &old)  &parent =  &elm; ( &elm)->$field = ( &old)->$field;  &if ( &RB_PARENT( &old, $field)) {  &if ( &RB_LEFT( &RB_PARENT( &old, $field), $field) ==  &old)  &RB_LEFT( &RB_PARENT( &old, $field), $field) =  &elm;  &else  &RB_RIGHT( &RB_PARENT( &old, $field), $field) =  &elm;  &RB_AUGMENT( &RB_PARENT( &old, $field)); }  &else  &RB_ROOT( &head) =  &elm;  &RB_PARENT( &RB_LEFT( &old, $field), $field) =  &elm;  &if ( &RB_RIGHT( &old, $field))  &RB_PARENT( &RB_RIGHT( &old, $field), $field) =  &elm;  &if ( &parent) {  &left =  &parent;  &do {  &RB_AUGMENT( &left); }  &while (( &left =  &RB_PARENT( &left, $field)) !=  &NULL); }  &goto  &color; }  &parent =  &RB_PARENT( &elm, $field);  &color =  &RB_COLOR( &elm, $field);  &if ( &child)  &RB_PARENT( &child, $field) =  &parent;  &if ( &parent) {  &if ( &RB_LEFT( &parent, $field) ==  &elm)  &RB_LEFT( &parent, $field) =  &child;  &else  &RB_RIGHT( &parent, $field) =  &child;  &RB_AUGMENT( &parent); }  &else  &RB_ROOT( &head) =  &child;  &color:  &if ( &color ==  &RB_BLACK) $name &_RB_REMOVE_COLOR( &head,  &parent,  &child);  &return ( &old); } $attr \'struct type\' * $name &_RB_INSERT(\'struct name\' * &head, \'struct type\' * &elm) { \'struct type\' * &tmp; \'struct type\' * &parent =  &NULL; \'int\'  &comp = 0;  &tmp =  &RB_ROOT( &head);  &while ( &tmp) {  &parent =  &tmp;  &comp = ($cmp)( &elm,  &parent);  &if ( &comp < 0)  &tmp =  &RB_LEFT( &tmp, $field);  &else  &if ( &comp > 0)  &tmp =  &RB_RIGHT( &tmp, $field);  &else  &return ( &tmp); }  &RB_SET( &elm,  &parent, $field);  &if ( &parent !=  &NULL) {  &if ( &comp < 0)  &RB_LEFT( &parent, $field) =  &elm;  &else  &RB_RIGHT( &parent, $field) =  &elm;  &RB_AUGMENT( &parent); }  &else  &RB_ROOT( &head) =  &elm; $name &_RB_INSERT_COLOR( &head,  &elm);  &return ( &NULL); } $attr \'struct type\' * $name &_RB_FIND(\'struct name\' * &head, \'struct type\' * &elm) { \'struct type\' * &tmp =  &RB_ROOT( &head); \'int\'  &comp;  &while ( &tmp) {  &comp = $cmp( &elm,  &tmp);  &if ( &comp < 0)  &tmp =  &RB_LEFT( &tmp, $field);  &else  &if ( &comp > 0)  &tmp =  &RB_RIGHT( &tmp, $field);  &else  &return ( &tmp); }  &return ( &NULL); } $attr \'struct type\' * $name &_RB_NFIND(\'struct name\' * &head, \'struct type\' * &elm) { \'struct type\' * &tmp =  &RB_ROOT( &head); \'struct type\' * &res =  &NULL; \'int\'  &comp;  &while ( &tmp) {  &comp = $cmp( &elm,  &tmp);  &if ( &comp < 0) {  &res =  &tmp;  &tmp =  &RB_LEFT( &tmp, $field); }  &else  &if ( &comp > 0)  &tmp =  &RB_RIGHT( &tmp, $field);  &else  &return ( &tmp); }  &return ( &res); } $attr \'struct type\' * $name &_RB_NEXT(\'struct type\' * &elm) {  &if ( &RB_RIGHT( &elm, $field)) {  &elm =  &RB_RIGHT( &elm, $field);  &while ( &RB_LEFT( &elm, $field))  &elm =  &RB_LEFT( &elm, $field); }  &else {  &if ( &RB_PARENT( &elm, $field)  && ( &elm ==  &RB_LEFT( &RB_PARENT( &elm, $field), $field)))  &elm =  &RB_PARENT( &elm, $field);  &else {  &while ( &RB_PARENT( &elm, $field)  && ( &elm ==  &RB_RIGHT( &RB_PARENT( &elm, $field), $field)))  &elm =  &RB_PARENT( &elm, $field);  &elm =  &RB_PARENT( &elm, $field); } }  &return ( &elm); } $attr \'struct type\' * $name &_RB_PREV(\'struct type\' * &elm) {  &if ( &RB_LEFT( &elm, $field)) {  &elm =  &RB_LEFT( &elm, $field);  &while ( &RB_RIGHT( &elm, $field))  &elm =  &RB_RIGHT( &elm, $field); }  &else {  &if ( &RB_PARENT( &elm, $field)  && ( &elm ==  &RB_RIGHT( &RB_PARENT( &elm, $field), $field)))  &elm =  &RB_PARENT( &elm, $field);  &else {  &while ( &RB_PARENT( &elm, $field)  && ( &elm ==  &RB_LEFT( &RB_PARENT( &elm, $field), $field)))  &elm =  &RB_PARENT( &elm, $field);  &elm =  &RB_PARENT( &elm, $field); } }  &return ( &elm); } $attr \'struct type\' * $name &_RB_MINMAX(\'struct name\' * &head, \'int\'  &val) { \'struct type\' * &tmp =  &RB_ROOT( &head); \'struct type\' * &parent =  &NULL;  &while ( &tmp) {  &parent =  &tmp;  &if ( &val < 0)  &tmp =  &RB_LEFT( &tmp, $field);  &else  &tmp =  &RB_RIGHT( &tmp, $field); }  &return ( &parent); });
    }' unless defined(&RB_GENERATE_INTERNAL);
    eval 'sub RB_NEGINF () {-1;}' unless defined(&RB_NEGINF);
    eval 'sub RB_INF () {1;}' unless defined(&RB_INF);
    eval 'sub RB_INSERT {
        my($name, $x, $y) = @_;
	    eval q($name &_RB_INSERT($x, $y));
    }' unless defined(&RB_INSERT);
    eval 'sub RB_REMOVE {
        my($name, $x, $y) = @_;
	    eval q($name &_RB_REMOVE($x, $y));
    }' unless defined(&RB_REMOVE);
    eval 'sub RB_FIND {
        my($name, $x, $y) = @_;
	    eval q($name &_RB_FIND($x, $y));
    }' unless defined(&RB_FIND);
    eval 'sub RB_NFIND {
        my($name, $x, $y) = @_;
	    eval q($name &_RB_NFIND($x, $y));
    }' unless defined(&RB_NFIND);
    eval 'sub RB_NEXT {
        my($name, $x, $y) = @_;
	    eval q($name &_RB_NEXT($y));
    }' unless defined(&RB_NEXT);
    eval 'sub RB_PREV {
        my($name, $x, $y) = @_;
	    eval q($name &_RB_PREV($y));
    }' unless defined(&RB_PREV);
    eval 'sub RB_MIN {
        my($name, $x) = @_;
	    eval q($name &_RB_MINMAX($x,  &RB_NEGINF));
    }' unless defined(&RB_MIN);
    eval 'sub RB_MAX {
        my($name, $x) = @_;
	    eval q($name &_RB_MINMAX($x,  &RB_INF));
    }' unless defined(&RB_MAX);
    eval 'sub RB_FOREACH {
        my($x, $name, $head) = @_;
	    eval q( &for (($x) =  &RB_MIN($name, $head); ($x) !=  &NULL; ($x) = $name &_RB_NEXT($x)));
    }' unless defined(&RB_FOREACH);
    eval 'sub RB_FOREACH_FROM {
        my($x, $name, $y) = @_;
	    eval q( &for (($x) = ($y); (($x) !=  &NULL)  && (($y) = $name &_RB_NEXT($x), ($x) !=  &NULL); ($x) = ($y)));
    }' unless defined(&RB_FOREACH_FROM);
    eval 'sub RB_FOREACH_SAFE {
        my($x, $name, $head, $y) = @_;
	    eval q( &for (($x) =  &RB_MIN($name, $head); (($x) !=  &NULL)  && (($y) = $name &_RB_NEXT($x), ($x) !=  &NULL); ($x) = ($y)));
    }' unless defined(&RB_FOREACH_SAFE);
    eval 'sub RB_FOREACH_REVERSE {
        my($x, $name, $head) = @_;
	    eval q( &for (($x) =  &RB_MAX($name, $head); ($x) !=  &NULL; ($x) = $name &_RB_PREV($x)));
    }' unless defined(&RB_FOREACH_REVERSE);
    eval 'sub RB_FOREACH_REVERSE_FROM {
        my($x, $name, $y) = @_;
	    eval q( &for (($x) = ($y); (($x) !=  &NULL)  && (($y) = $name &_RB_PREV($x), ($x) !=  &NULL); ($x) = ($y)));
    }' unless defined(&RB_FOREACH_REVERSE_FROM);
    eval 'sub RB_FOREACH_REVERSE_SAFE {
        my($x, $name, $head, $y) = @_;
	    eval q( &for (($x) =  &RB_MAX($name, $head); (($x) !=  &NULL)  && (($y) = $name &_RB_PREV($x), ($x) !=  &NULL); ($x) = ($y)));
    }' unless defined(&RB_FOREACH_REVERSE_SAFE);
}
1;
