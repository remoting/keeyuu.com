<header id="banner" class="wrapper">
  <div class="inner">
    <h2 id="banner-title">{{ page.subtitle }}</h2>
    <br><br><br>
    支持Windows、Linux等等主流操作系统，支持RDP，SSH，VNC等主流远程访问协议，不需要安装客户端，采用浏览器H5技术。
    <br><br><br>
    <button style="    padding: 10px 20px;cursor: pointer;
    border-radius: 5px;
    background: #3aeafb;" onclick="location.href='./docs/setup.html';">立即开始</button>
    <br><br><br>
    <!--
    <div id="banner-start">
      <span id="banner-start-command">{{ config.start }}</span><a id="banner-start-link" href="docs/"><i class="fa fa-arrow-right"></i></a>
    </div>
    <div id="banner-share">{{ partial('partial/share') }}</div>
    -->
  </div>
</header>

<div id="content-wrap">
  <div class="wrapper">
    <div class="inner features">
      {{ page.content }}
    </div>
  </div> 
</div>
