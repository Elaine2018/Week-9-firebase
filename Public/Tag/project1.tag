<project1>
	<div id="header">
 	 <h1>Creative Technology for STEAM Education</h1>
  </div>

	<div class="projectDisplay">
    <p>We have developed <span>{projectNum}</span> projects for makerspace education</p>
		<input type="text" ref="urlEl" placeholder="Enter pic url">
		<input type="text" ref="captionEl" placeholder="Enter caption">
		<input type="text" ref="introEl" placeholder="Enter introduction url">

		<button type="button" onclick={ addProject }>Add Project</button>
	</div>

	<project-child each={ myProjects }>
 	</project-child>


	<script>
	var tag = this;

	var projectsRef = rootRef.child('myProjects');

		this.myProjects = [
		{
			url: "./Image/TurtleArt code.png",
			caption: "TurtleArt-Draw with Coding" ,
		  introduction:"https://medium.com/@elainepan_25203/creating-computational-art-with-turtleart-a421ebccc935?source=friends_link&sk=292827a26ef128b7b9ecc615da18c90a"},
		{
			url: "./Image/Scratch-Name Animation.png",
			caption:"Scratch-Coded Animation",
		introduction:"https://scratch.mit.edu/projects/286724419/" },
		{
			url: "./Image/Scratch-Story Telling.png",
			caption: "Scratch-Creative Story Telling with Coding",
		introduction:"https://scratch.mit.edu/projects/286772452/"},
		{
			url: "./Image/Makey.png",
			caption: "Makey Makey-Electronic Invention Kit",
		 introduction:"https://medium.com/@elainepan_25203/coded-music-anything-can-be-an-instrument-be7de55dffa1?source=friends_link&sk=1970ed40e38ad56e079d2f28d8b610bd" },
		{
			url: "./Image/Coded Embroidery.jpeg",
			caption: "Turtle Stitch-Coded Embroidery",
			introduction:"https://medium.com/@elainepan_25203/turtlestitch-coded-embroidery-dc30b0258480?source=friends_link&sk=6fa57b528a5a6ffd2c034df09f291f64"
		},
		{
			url: "./Image/3D-Beetle Blocks.jpg",
			caption: "Beetle Blocks-Create 3D Model with Coding",
		  introduction:"https://medium.com/@elainepan_25203/beetle-block-3d-modeling-5028ce894ad4?source=friends_link&sk=6f7e4b80baeb540efb698db91e867d93"},
		];
  console.log(this.myProjects.length);

    this.projectNum = this.myProjects.length;

		var that  =  this;

		this.remove = function(event) {
			console.log('EVENT:', event);

			var Obj = event.item;
			var index = that.myProjects.indexOf(Obj);
			that.myProjects.splice(index, 1);
			//since in this case, event is triggered by child, parent data won't be updated until
			//we call it to update manually.
			// console.log(that.projectNum);
			// console.log("removing");
			console.log(that.myProjects.length);
			that.projectNum = that.myProjects.length;
			that.update();
		};

		this.addProject = function(event) {
			console.log(event);
			var url = this.refs.urlEl.value;
			var intro = this.refs.introEl.value;
			var caption = this.refs.captionEl.value;
			var newProject = { url: url, caption: caption,introduction:intro };
			// We are adding a book object to the source of truth array.
			this.myProjects.push(newProject);

			// RESET INPUTS this.refs.urlEl.value = "";
      this.projectNum = this. myProjects.length;
			this.refs.captionEl.value = "";
			this.refs.urlEl.value = "";
			this.refs.introEl.value = "";
		};

		 this.on ("updated",function(){
		 this.projectNum = this. myProjects.length;
			 // that.update();
		 });


	</script>

	<style>
		:scope {
			display: block;
			background: #cddc39;
			padding: 15px;
		}
		img {
      margin-top: 10px;
			width: 50%;
		}
		#header {
			text-align:center;
		}
		.projectDisplay{
      margin-left: 33%;
    }
		span {
			display: inline-block;
			padding: 0.25em;
			background-color: white;
			border-radius: 2em;
			font-weight: bold;
		}
	</style>
</project1>
