<%--
  Created by IntelliJ IDEA.
  User: WJX
  Date: 2019/9/29
  Time: 15:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>Title</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<input type="checkbox" id="difficulty" />
<input type="checkbox" id="sound" />
<input type="checkbox" id="first" />

<input type="checkbox" id="start" />

<form id="tictactoe">
    <input type="radio" name="cell-0" id="cell-0-x" />
    <input type="radio" name="cell-0" id="cell-0-o" />
    <input type="radio" name="cell-1" id="cell-1-x" />
    <input type="radio" name="cell-1" id="cell-1-o" />
    <input type="radio" name="cell-2" id="cell-2-x" />
    <input type="radio" name="cell-2" id="cell-2-o" />
    <input type="radio" name="cell-3" id="cell-3-x" />
    <input type="radio" name="cell-3" id="cell-3-o" />
    <input type="radio" name="cell-4" id="cell-4-x" />
    <input type="radio" name="cell-4" id="cell-4-o" />
    <input type="radio" name="cell-5" id="cell-5-x" />
    <input type="radio" name="cell-5" id="cell-5-o" />
    <input type="radio" name="cell-6" id="cell-6-x" />
    <input type="radio" name="cell-6" id="cell-6-o" />
    <input type="radio" name="cell-7" id="cell-7-x" />
    <input type="radio" name="cell-7" id="cell-7-o" />
    <input type="radio" name="cell-8" id="cell-8-x" />
    <input type="radio" name="cell-8" id="cell-8-o" />

    <div id="menu" class="scrim">
        <div class="center" style="width: 220px">
            <h1>  轻   松   一   下  </h1>
            <div>
                <h2>  难 度  </h2>
                <div class="toggle-group">
                    <span>  简 单  </span>
                    <label for="difficulty" class="toggle"></label>
                    <span>  进 阶  </span>
                </div>
                <!-- Soon...
                <h2>Sound</h2>
                <div class="toggle-group">
                  <span>Off</span>
                  <label for="sound" class="toggle"></label>
                  <span>On</span>
                </div>
                -->
                <h2>  谁 先 开 始  </h2>
                <div class="toggle-group">
                    <span>  玩 家  </span>
                    <label for="first" class="toggle"></label>
                    <span>  电 脑  </span>
                </div>
                <label for="start" id="start-button" class="btn"> 开  始 </label>
            </div>
        </div>
    </div>

    <div id="board" class="center">
        <div class="tile" id="tile-0">
            <label for="cell-0-x"></label>
            <div></div>
        </div>
        <div class="tile" id="tile-1">
            <label for="cell-1-x"></label>
            <div></div>
        </div>
        <div class="tile" id="tile-2">
            <label for="cell-2-x"></label>
            <div></div>
        </div>
        <div class="tile" id="tile-3">
            <label for="cell-3-x"></label>
            <div></div>
        </div>
        <div class="tile" id="tile-4">
            <label for="cell-4-x"></label>
            <div></div>
        </div>
        <div class="tile" id="tile-5">
            <label for="cell-5-x"></label>
            <div></div>
        </div>
        <div class="tile" id="tile-6">
            <label for="cell-6-x"></label>
            <div></div>
        </div>
        <div class="tile" id="tile-7">
            <label for="cell-7-x"></label>
            <div></div>
        </div>
        <div class="tile" id="tile-8">
            <label for="cell-8-x"></label>
            <div></div>
        </div>
    </div>
    <div id="label-computer" class="btn">
        Computer Move!
        <label for="cell-0-o"></label>
        <label for="cell-1-o"></label>
        <label for="cell-2-o"></label>
        <label for="cell-3-o"></label>
        <label for="cell-4-o"></label>
        <label for="cell-5-o"></label>
        <label for="cell-6-o"></label>
        <label for="cell-7-o"></label>
        <label for="cell-8-o"></label>
    </div>
    <div id="end" class="scrim">
        <div id="message" class="center">
            <div>
                <input type="reset" for="tictactoe" value="Play again" />
            </div>
        </div>
    </div>
</form>
</body>
</html>
