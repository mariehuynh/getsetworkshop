

%if something == 'Parrot':
    <h1>Hello {{something}}!</h1>
    <p>Change the url and add /something to it.</p>
%else:
    <dir>


        <dir class="oval-thought-border">
            {{something.title()}}, help!  I'm surrounded by a bunch of weirdos!
        </dir>

        <dir class = "speaker">
            <img src="/images/grandville-lecture.jpg">
        </dir>
    </dir>

%end



<style>

.speaker {
    left: 50%;
    position: absolute;
}

.speaker img {
    top: -135px;
    z-index: -1;
    position: relative;
    right: 50%;
}


/* ============================================================================================================================
== OVER THOUGHT BUBBLE, EMPTY, WITH BORDER (more CSS3)
** ============================================================================================================================ */

.oval-thought-border {
  position:relative;
  width:270px;
  position:relative;
  padding:70px 30px;
  margin:1em auto 80px;
  border:10px solid #c81e2b;
  text-align:center;
  color:#333;
  background:#fff;
  /* css3 */
  /*
  NOTES:
  -webkit-border-radius:240px 140px; // produces oval in safari 4 and chrome 4
  -webkit-border-radius:240px / 140px; // produces oval in chrome 4 (again!) but not supported in safari 4
  Not correct application of the current spec, therefore, using longhand to avoid future problems with webkit corrects this
  */
  -webkit-border-top-left-radius:240px 140px;
  -webkit-border-top-right-radius:240px 140px;
  -webkit-border-bottom-right-radius:240px 140px;
  -webkit-border-bottom-left-radius:240px 140px;
  -moz-border-radius:240px / 140px;
  border-radius:240px / 140px;
}

/* creates the larger circle */
.oval-thought-border:before {
  content:"";
  position:absolute;
  z-index:10;
  bottom:-40px;
  right:100px;
  width:50px;
  height:50px;
  border:10px solid #c81e2b;
  background:#fff;
  /* css3 */
  -webkit-border-radius:50px;
  -moz-border-radius:50px;
  border-radius:50px;
  /* reduce the damage in FF3.0 */
  display:block;
}

/* creates the smaller circle */
.oval-thought-border:after {
  content:"";
  position:absolute;
  z-index:10;
  bottom:-60px;
  right:50px;
  width:25px;
  height:25px;
  border:10px solid #c81e2b;
  background:#fff;
  /* css3 */
  -webkit-border-radius:25px;
  -moz-border-radius:25px;
  border-radius:25px;
  /* reduce the damage in FF3.0 */
  display:block;
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