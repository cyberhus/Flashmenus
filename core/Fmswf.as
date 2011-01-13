package core 
{
	
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	/**
	 * ...
	 * @author Rene Skou
	 * @description class to handler the placement of fmswf items
	 */
	public class Fmswf extends Sprite
	{
		private var dataObject:XML;
		private var baseurl:String;
		private var movieclipArray:Array;
		
		
		
		public function Fmswf(xmlobj:XML,burl:String,mcarray:Array) 
		{
			dataObject = xmlobj;
			baseurl = burl;
			movieclipArray = mcarray;
			
			
			//for loop for generating the fmswf's and placing them on stage
			for (var i:Number = 0; i <countMenuItems; i++)
			{
				var fmswfContainer:Sprite = new Sprite();
				fmswfContainer.x = dataObject..node[i].node_data_field_text_field_swf_x;
				fmswfContainer.y = dataObject..node[i].node_data_field_text_field_swf_y;
				fmswfContainer.buttonMode = true;
				fmswfContainer.useHandCursor = true;
				fmswfContainer.mouseChildren = false;
				fmswfContainer.addChild(movieclipArray[i]);
				addChild(fmswfContainer);
				
				fmswfContainer.addEventListener(MouseEvent.MOUSE_OVER, fmswfContainerMouseOver);
			}
			
		}

		private function fmswfContainerMouseOver (event:MouseEvent):void
		{
			
		}
		//counting the nodes  so i know how many swf to generate in my for loop.
		private function get countMenuItems():Number
		{
			return dataObject..node.length();
		}
		
	}

}