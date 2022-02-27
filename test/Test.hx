package test;

import cdb.Data;
import test.DB;

class Test {

    public static function main() {
        #if js
		test.DB.load(null);
		#else
		test.DB.load(haxe.Resource.getString("test/test.cdb"));
		#end		
		
		trace(test.DB.items.get(sword).alt.fx);
		trace(test.DB.items.get(sword).alt.test);
		trace(switch( test.DB.items.get(herb).fx ) { case Monster(m): m.id; default: null; } );
		
		for( s in test.DB.monsters.resolve("wolf").skills[0].sub ) {
			trace(s);
        }

    }
}