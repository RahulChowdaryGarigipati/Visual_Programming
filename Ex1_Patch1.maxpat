{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 5,
			"revision" : 3,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 41.0, 84.0, 1468.0, 705.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-5",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 383.5, 175.5, 238.0, 75.0 ],
					"text" : "We create an object \"jit.anim.drive\", in which it enables the  objects rendering view to zoom in/out, move up/down, and move left/right with the help of a keys q, w, a, s, d, z"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"linecount" : 7,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 471.5, 447.5, 353.0, 103.0 ],
					"presentation_linecount" : 7,
					"text" : "We create an object \"jit.gl.handle\" which is an event that triggers the object in which the object will handle the rotation and movement of the sphere to move with a little mouse spin,\nand the attributes @auto_rotate represents the rotation of the sphere automatically, and @position represents the objects position along the x,y,z axis, and @rotatexyz represents the current rotation of the sphere."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 48.5, 516.0, 417.0, 22.0 ],
					"text" : "jit.gl.handle Patch1 @auto_rotate 1 @position 1. 0. 1. @rotatexyz 0.6. 0. 0.6."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 69.0, 161.0, 68.0, 22.0 ],
					"text" : "anim_reset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 151.5, 209.0, 186.0, 22.0 ],
					"text" : "jit.anim.drive Patch1 @ui_listen 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 48.5, 594.0, 701.0, 75.0 ],
					"text" : "We create another object \"jit.gl.gridshape\" in which the object creates the shape of the second sphere and the attributes @lightning_enable represents the spheres visible light shade, and the @scale represents the size of the sphere, and the @color represents the color of the sphere, and @anchor represents the position of the sphere while it`s rotating along the x,y,z axis, and @dim represents the dimension of the sphear to make it much more sphear like, and @smooth_shading represents the sphears shading to make it look completly like sphear."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 383.5, 260.0, 482.0, 34.0 ],
					"text" : "We create an object\"jit.gl.camera\" in which we want to set the object to a rendering view,\n and the attribute @position represents the  objects rendered viewing angle."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_gl_texture", "" ],
					"patching_rect" : [ 151.5, 266.0, 211.0, 22.0 ],
					"text" : "jit.gl.camera Patch1 @position 0. 0. 5."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 48.5, 552.5, 675.0, 22.0 ],
					"text" : "jit.gl.gridshape Patch1 @lighting_enable 1 @scale 0.1 @color 1. 0. 1. @anchor 1. 0.1. 0. @dim 300 300 @smooth_shading 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"linecount" : 11,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 837.5, 354.5, 304.0, 158.0 ],
					"text" : "We create an object \"jit.gl.gridshape\" in which the object creates the shape of the sphere and the attributes @lightning_enable represents the spheres visible light shade, and the @scale represents the size of the sphere, and the @color represents the color of the sphere, and @anchor represents the position of the sphere while it`s rotating along the x,y,z axis, and @dim represents the dimension of the sphear to make it much more sphear like, and @smooth_shading represents the sphears shading to make it look completly like sphear."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 48.5, 422.5, 685.0, 22.0 ],
					"text" : "jit.gl.gridshape Patch1 @lighting_enable 1 @scale 0.4 @color 1. 1. 0. @anchor 0.4. 0.1. 0. @dim 300 300 @smooth_shading 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"linecount" : 6,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 401.5, 320.5, 352.0, 89.0 ],
					"text" : "We create an object \"jit.gl.handle\" which is an event that triggers the object in which the object will handle the rotation and movement of the sphere to move with a little mouse spin,\nand the attributes @auto_rotate represents the rotation of the sphere automatically, and @position represents the objects position along the x,y,z axis."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"linecount" : 9,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 347.0, 29.5, 151.0, 131.0 ],
					"text" : "We create an object \"jit.world\" in which a window for the animation pops up and the attributes @size represents the size of the window, and @floating represents that the window will always be floating."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 69.0, 373.5, 293.0, 22.0 ],
					"text" : "jit.gl.handle Patch1 @auto_rotate 1 @position 0. 0. 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 69.0, 324.5, 35.0, 22.0 ],
					"text" : "reset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "jit_matrix", "bang", "" ],
					"patching_rect" : [ 69.0, 84.0, 238.0, 22.0 ],
					"text" : "jit.world Patch1 @size 320 240 @floating 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 116.5, 20.5, 150.0, 34.0 ],
					"text" : "The object represents a \"Toggle\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 69.0, 25.5, 24.0, 24.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"order" : 0,
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"order" : 1,
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"order" : 0,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"order" : 1,
					"source" : [ "obj-39", 0 ]
				}

			}
 ],
		"dependency_cache" : [  ],
		"autosave" : 0
	}

}
