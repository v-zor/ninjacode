#import <Foundation/Foundation.h>
#import <AppKit/AppKit.h>
//#include "ghack.h"
/*
Copyright (C) 2013 Johan Ceuppens 
Copyright (C) 2013 v-zor

This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program; if not, write to the Free Software Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
*/
struct __struct_MonsterTypeInfo { char *name; char *class; };
struct __struct_MonsterBaseInfo { char *hitpoints; char *armor; char *strength; };
struct __struct_MonsterManaInfo { char *manapoints; char *spells; char *manalevel; };
struct __struct_MonsterPriestInfo { char *clericpoints; char *spells; char *clericlevel; };
struct __struct_MonsterLevelInfo { char *strength; char *dexterity;
				char *intelligence; char *constitution;
				char *charisma; };
struct __struct_MonsterEquipmentInfo { char *head; char *body; char *feet; char *gloves; };
//TODO
#define __MonsterTypeInfo(monsterinfo) \
	typedef __struct_MonsterTypeInfo monsterinfo; \

/*
 * Do not subclass, use the meta level above
 */
@interface MonsterInfo : NSObject 
{
	void *info;
}

-(id) init;
@end
