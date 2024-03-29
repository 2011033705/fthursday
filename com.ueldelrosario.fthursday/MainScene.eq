
/*
 * MainScene.eq
 * Generated by Eqela Studio 2.0b7.4
 */

public class MainScene : SEScene
{
	int w;
	int h;
	
	int pX;
	int py;
	int wt;
	int ht;
	
	SESprite gastly;
	SESprite leaf;
	SESprite monkey;
	SESprite violet;
	SESprite text;

	SESprite Minion1;
	SESprite EvilM1;
	SESprite Archer1;
	SESprite Melee1;
	SESprite text2;
	
	public void initialize(SEResourceCache rsc) {
		
		base.initialize(rsc);
		
		w = get_scene_width();
		h = get_scene_height();
		
		
		
		rsc.prepare_image("Minion", "gastly",w*0.5,h*0.5);
		rsc.prepare_image("EvilM", "leaf",w*0.5,h*0.5);
		rsc.prepare_image("Archer", "monkey",w*0.5,h*0.5);
		rsc.prepare_image("Melee", "violet",w*0.5,h*0.5);
		rsc.prepare_font("myfont","arial bold color=black", 90);

		add_entity(SESpriteEntity.for_color(Color.instance("red"), get_scene_width(), get_scene_height()));

		gastly  = add_sprite_for_image(SEImage.for_resource("Minion"));
		leaf = add_sprite_for_image(SEImage.for_resource("EvilM"));
		monkey = add_sprite_for_image(SEImage.for_resource("Archer"));
		violet = add_sprite_for_image(SEImage.for_resource("Melee"));

		gastly.move(0,0);
		leaf.move(w*0.5,0);
		monkey.move(0,h*0.5);
		violet.move(w*0.5,h*0.5);
	 

		text = add_sprite_for_text(" ", "myfont");

		wt = text.get_width();
        ht = text.get_height();   

		rsc.prepare_image("Minion1","gastly",w,h);
		rsc.prepare_image("EvilM1", "leaf",w,h);
		rsc.prepare_image("Archer1", "monkey",w,h);
		rsc.prepare_image("Melee1", "violet",w,h);

	
	}

	public void on_pointer_press(SEPointerInfo pi) {
		base.on_pointer_press(pi);
		pX = pi.get_x();
		py = pi.get_y();

		wt = text.get_width();
		ht = text.get_height();
	    if (pX > 0 && pX < w*0.5 && py > 0 && py < h*0.5)
        {
			add_entity(SESpriteEntity.for_color(Color.instance("white"), get_scene_width(), get_scene_height()));
            text.set_text("HELLO!");
            text.move(w*0.25 - wt*0.5, h*0.25 - ht*0.5);
			gastly.set_alpha(0.5);
			leaf.set_alpha(1);
			monkey.set_alpha(1);
			violet.set_alpha(1);
			
        }
        else if (pX > 0.5*w && pX < w && py > 0 && py < h*0.5)
        {
            add_entity(SESpriteEntity.for_color(Color.instance("white"), get_scene_width(), get_scene_height()));
			text.set_text("OLA!");
            text.move(w*0.75 - wt*0.5, h*0.25 - ht*0.5);
			gastly.set_alpha(1);
			leaf.set_alpha(0.5);
			monkey.set_alpha(1);
			violet.set_alpha(1);
			
        }
        else if (pX > 0 && pX < w*0.5 && py > 0.5*h && py < h)
        {
            add_entity(SESpriteEntity.for_color(Color.instance("white"), get_scene_width(), get_scene_height()));
			text.set_text("ALOHA!");
            text.move(w*0.25 - wt*0.5, h*0.75 - ht*0.5);
			gastly.set_alpha(1);
			leaf.set_alpha(1);
			monkey.set_alpha(0.5);
			violet.set_alpha(1);
        }
        else if (pX > 0.5 && pX < w && py > 0.5*h && py < h)
        {
            add_entity(SESpriteEntity.for_color(Color.instance("white"), get_scene_width(), get_scene_height()));
			text.set_text("HALLO!");
            text.move(w*0.75 - wt*0.5, h*0.75 - ht*0.5);
			gastly.set_alpha(1);
			leaf.set_alpha(1);
			monkey.set_alpha(1);
			violet.set_alpha(0.5);
        }
  	  if( pX > 0.35 && pX < w*0.5 && py > 0 && py < h*0.15 ) {
            Minion1 = add_sprite_for_image(SEImage.for_resource("Minion1"));
        }
        
        else if( pX >0.75  && pX < w && py > 0 && py < h*0.15 ) {
            EvilM1 = add_sprite_for_image(SEImage.for_resource("EvilM1"));
        }
        else if( pX >0.35  && pX < w*0.5 && py > 0.5*h && py < h*0.65 ) {
            Archer1 = add_sprite_for_image(SEImage.for_resource("Archer1"));
        }
        else if( pX >0.75  && pX < w && py > 0.5*h && py < h*0.65 ) {
            Melee1 = add_sprite_for_image(SEImage.for_resource("Melee1"));
        }
    }

	
	public void cleanup() {
		base.cleanup();
	}

}