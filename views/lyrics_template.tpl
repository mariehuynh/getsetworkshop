

<dir>


    <dir class="oval-speech">
      % for item in lyrics:
        {{item}}
        <br >
      % end
    </dir>

    <dir class = "singer">
        <img src="images/16-Pidgey.png">
    </dir>
</dir>





<style>

.singer {
    left: 50%;
    position: absolute;
}

.singer img {
    position: relative;
    right: 133%;
}


/* ============================================================================================================================
== OVAL SPEECH BUBBLE (more CSS3)
** ============================================================================================================================ */

.oval-speech {
  position:relative;
  width:270px;
  padding:50px 40px;
  margin:1em auto 50px;
  text-align:center;
  color:#fff;
  background:#5a8f00;
  /* css3 */
  background:-webkit-gradient(linear, 0 0, 0 100%, from(#b8db29), to(#5a8f00));
  background:-moz-linear-gradient(#b8db29, #5a8f00);
  background:-o-linear-gradient(#b8db29, #5a8f00);
  background:linear-gradient(#b8db29, #5a8f00);
  /*
  NOTES:
  -webkit-border-radius:220px 120px; // produces oval in safari 4 and chrome 4
  -webkit-border-radius:220px / 120px; // produces oval in chrome 4 (again!) but not supported in safari 4
  Not correct application of the current spec, therefore, using longhand to avoid future problems with webkit corrects this
  */
  -webkit-border-top-left-radius:220px 120px;
  -webkit-border-top-right-radius:220px 120px;
  -webkit-border-bottom-right-radius:220px 120px;
  -webkit-border-bottom-left-radius:220px 120px;
  -moz-border-radius:220px / 120px;
  border-radius:220px / 120px;
}

.oval-speech p {font-size:1.25em;}

/* creates part of the curve */
.oval-speech:before {
  content:"";
  position:absolute;
  z-index:-1;
  bottom:-30px;
  right:50%;
  height:30px;
  border-right:60px solid #5a8f00;
  background:#5a8f00; /* need this for webkit - bug in handling of border-radius */
  /* css3 */
  -webkit-border-bottom-right-radius:80px 50px;
  -moz-border-radius-bottomright:80px 50px;
  border-bottom-right-radius:80px 50px;
  /* using translate to avoid undesired appearance in CSS2.1-capabable but CSS3-incapable browsers */
  -webkit-transform:translate(0, -2px);
  -moz-transform:translate(0, -2px);
  -ms-transform:translate(0, -2px);
  -o-transform:translate(0, -2px);
  transform:translate(0, -2px);
}

/* creates part of the curved pointy bit */
.oval-speech:after {
  content:"";
  position:absolute;
  z-index:-1;
  bottom:-30px;
  right:50%;
  width:60px;
  height:30px;
  background:#fff;
  /* css3 */
  -webkit-border-bottom-right-radius:40px 50px;
  -moz-border-radius-bottomright:40px 50px;
  border-bottom-right-radius:40px 50px;
  /* using translate to avoid undesired appearance in CSS2.1-capabable but CSS3-incapable browsers */
  -webkit-transform:translate(-30px, -2px);
  -moz-transform:translate(-30px, -2px);
  -ms-transform:translate(-30px, -2px);
  -o-transform:translate(-30px, -2px);
  transform:translate(-30px, -2px);
}

</style>