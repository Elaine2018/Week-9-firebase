<project-child>
    <img src={url} >
		<h3>{ caption }</h3>
    <a href={introduction}>Learn about This Project</a>
    <br>
    <button type="button" onclick={ parent.remove }>Remove Project</button>



<style>
	:scope {
		display: block;
		text-align: center;
	}
   button{
     margin:15px;
     width:80px;
     height:40px;
     background-color: yellow;
   }

</style>


</project-child>
