<template>
  <div class="index">
    <el-container>
      <el-header>
        <el-row class="appbar" type="flex" justify="space-between">
          <el-col span="8">
            <router-link to="/">
              <img class="logo" src="../assets/images/logo.svg" />
            </router-link>
          </el-col>
          <el-col span="16" class="content">
            <ul class="nav hidden-xs-only">
              <el-link
                type="primary"
                class="primary-a"
                href="./"
                >Home</el-link
              >
              <el-link
                target="_blank"
                type="primary"
                class="primary-a"
                href="https://docs.zerodao.net/learn/"
                >{{ $t("page.learn") }}</el-link
              >
              <el-link
                target="_blank"
                type="primary"
                class="primary-a"
                href="https://docs.zerodao.net/guide/"
                >{{ $t("page.guide") }}</el-link
              >
              <el-dropdown @command="changeLang">
                <span class="el-dropdown-link">
                  <i class="iconfont icon-yuyan"></i>
                  {{ $t("page.language") }}
                </span>
                <el-dropdown-menu slot="dropdown">
                  <el-dropdown-item command="zh-CN">中文</el-dropdown-item>
                  <el-dropdown-item command="en-US">English</el-dropdown-item>
                </el-dropdown-menu>
              </el-dropdown>
            </ul>
            <span
              @click="drawer = true"
              class="hidden-sm-and-up iconfont menu white"
            >
              <i class="iconfont icon-caidan-2"></i>
            </span>
          </el-col>
        </el-row>
      </el-header>

      <el-drawer
        size="60%"
        custom-class="drawer"
        title="nav"
        :visible.sync="drawer"
        :with-header="false"
      >
        <img class="logo" src="../assets/images/logo.svg" />
        <div @click="drawer = false">
          <el-link
            target="_blank"
            type="primary"
            href="https://docs.zerodao.net/learn/"
            >{{ $t("page.learn") }}</el-link
          >
        </div>
        <el-divider></el-divider>
        <div @click="drawer = false">
          <el-link
            target="_blank"
            type="primary"
            href="https://docs.zerodao.net/guide/"
            >{{ $t("page.guide") }}</el-link
          >
        </div>
        <el-divider></el-divider>
        <el-dropdown @command="changeLang">
          <span class="el-dropdown-link">
            <i class="iconfont icon-yuyan"></i>
            {{ $t("page.language") }}
          </span>
          <el-dropdown-menu slot="dropdown">
            <el-dropdown-item command="zh-CN">中文</el-dropdown-item>
            <el-dropdown-item command="en-US">English</el-dropdown-item>
          </el-dropdown-menu>
        </el-dropdown>
      </el-drawer>

      <el-main>
        <router-view></router-view>
      </el-main>
      <el-footer>
        <div class="footer-content">
          <div>
            <img src="../assets/images/logo-ui.svg" />
            <p class="text-second">© 2020-2021 ZeroDAO</p>
            <div class="icon-buttons hidden-xs-only">
              <a href="https://twitter.com/zerodaonet" target="_blank">
                <el-button class="iconfont" type="primary" circle
                  >&#xe65f;</el-button
                >
              </a>
              <a href="https://zerodao.medium.com/" target="_blank">
                <el-button class="iconfont" type="primary" circle
                  >&#xe6c9;</el-button
                >
              </a>
              <a href="https://discord.gg/cFkK7vZxVq" target="_blank">
                <el-button class="iconfont" type="primary" circle
                  >&#xe923;</el-button
                >
              </a>
              <a href="https://github.com/ZeroDAO" target="_blank">
                <el-button class="iconfont" type="primary" circle
                  >&#xe64a;</el-button
                >
              </a>
            </div>
          </div>
          <div class="footer-right">
            <div class="footer-nav hidden-xs-only">
              <span class="footer-nav-title">{{ $t("page.home") }}</span>
              <el-link :href="$t('page.light_paper_href')" target="_blank">{{
                $t("page.light_paper")
              }}</el-link>
              <el-link
                :href="$t('page.technical_white_paper_href')"
                target="_blank"
                >{{ $t("page.technical_white_paper") }}</el-link
              >
            </div>
            <div class="icon-buttons hidden-sm-and-up">
              <a href="https://twitter.com/zerodaonet" target="_blank">
                <el-button class="iconfont" type="primary" circle
                  >&#xe65f;</el-button
                >
              </a>
              <a href="https://zerodao.medium.com/" target="_blank">
                <el-button class="iconfont" type="primary" circle
                  >&#xe6c9;</el-button
                >
              </a>
              <a href="https://discord.gg/cFkK7vZxVq" target="_blank">
                <el-button class="iconfont" type="primary" circle
                  >&#xe923;</el-button
                >
              </a>
              <a href="https://github.com/ZeroDAO" target="_blank">
                <el-button class="iconfont" type="primary" circle
                  >&#xe64a;</el-button
                >
              </a>
            </div>
          </div>
        </div>
      </el-footer>
    </el-container>
  </div>
</template>

<script>
import localstorage from "@/util/localstorage";

export default {
  name: "HomeIndex",
  data() {
    return {
      apps: [[]],
      chaTime: "",
      drawer: false,
    };
  },
  created() {
    this.menuSele = this.$route.path;
    let navLanguage = localstorage.fetch("language") || navigator.language;
    if (typeof this.$i18n.messages[navLanguage] == "undefined") {
      navLanguage = "en-US";
    }
    this.$i18n.locale = navLanguage;
  },
  methods: {
    changeLang(language) {
      this.$i18n.locale = language;
      localstorage.set("language", language, 0);
    },
  },
};
</script>
<style lang="less">
body {
  margin: 0;
  background-color: #7153e7;
}
.el-header {
  background-color: #f9faff;
}
.el-footer {
  background-color: #eefdff;
  background-image: linear-gradient(119deg, #eefdff 0%, #fbf7ff 99%);
  height: auto !important;
  padding: 20px;
  .footer-content {
    display: flex;
    justify-content: space-between;
    max-width: 1024px;
    margin: auto;
    .footer-nav {
      display: flex;
      flex-flow: column;
      text-align: left;
      .footer-nav-title {
        margin-bottom: 20px;
        font-weight: bold;
      }
      a,
      span {
        text-align: left;
        margin-top: 5px;
        justify-content: left;
      }
    }
    img {
      width: 120px;
    }
  }

  .icon-buttons {
    margin-top: 30px;
  }
}
.t1 {
  font-size: 3em;
  font-weight: bold;
}

.regular-text {
  color: #606266;
}

.t2 {
  font-size: 2em;
  font-weight: bold;
  text-align: center;
}

.t3 {
  font-size: 1.5em;
}

.t4 {
  font-size: 1.2em;
}

.el-button--text {
  span {
    color: #303133;
  }
}
.index {
  width: 100%;
  .appbar {
    width: 100%;
    height: 5em;
    padding: 2em 0;
    .content {
      text-align: right;
      span {
        margin: auto 1em;
      }
    }
    .menu {
      .iconfont {
        font-size: 20px;
      }
    }
    .nav {
      a {
        font-size: 18px;
        line-height: 26px;
        color: #fff;
      }
    }
  }
  .el-drawer__body {
    text-align: right;
    a {
      font-size: 26px;
      margin-right: 15px;
      color: #fff;
    }
    img {
      margin: 15px 15px 25px auto;
    }
    .el-dropdown {
      margin-right: 15px;
    }
  }
  .pioneer {
    text-align: center;
    overflow: hidden;
    .title {
      color: #000;
      margin-top: 2em;
      background: url(../assets/images/line.svg) no-repeat center center;
      background-size: 400px;
    }
  }

  .ide {
    width: 100%;
    text-align: center;
    .title {
      p:nth-child(1) {
        margin-top: 3em;
        text-shadow: 5px 3px 1px #fb6c84;
      }
      p:nth-child(2) {
        margin-top: -1em;
      }
    }
    .ide-bg {
      margin: auto;
      .el-card {
        margin: 0.2em;
      }
      p {
        white-space: nowrap;
      }
    }
    .el-card__body {
      p:nth-child(1) {
        font-size: 2em;
        line-height: 1em;
        margin: 0;
      }
    }
  }
}
</style>
<style lang="scss">
@font-face {
  font-family: "ColorTube";
  src: url(../assets/css/ColorTube-2.otf);
}

.ColorTube {
  font-family: "ColorTube";
}

.iconfont {
  font-family: "iconfont" !important;
  font-size: 16px;
  font-style: normal;
  -webkit-font-smoothing: antialiased;
  -webkit-text-stroke-width: 0.2px;
  -moz-osx-font-smoothing: grayscale;
}

.title {
  p:nth-child(1) {
    margin-top: 3em;
  }
  p:nth-child(2) {
    margin-top: -1em;
  }
}

.primary {
  color: #002fda;
}

.logo {
  height: 40px;
  width: auto;
}
.el-header {
  background-color: transparent !important;
}
.fault-text {
  position: relative;
  color: #0322db;
  &::after,
  &::before {
    width: 100%;
    overflow: hidden;
    position: absolute;
    top: 0;
    background-color: #fff;
    clip: rect(0, 900px, 0, 0);
    color: #0322db;
    content: attr(data-text);
    animation: shake 3s linear infinite alternate-reverse;
  }
  &::before {
    left: -1px;
    text-shadow: 2px 0 #f85305;
  }
  &::after {
    left: 1px;
    text-shadow: -2px 0 #f66;
    animation-duration: 2s;
  }
}
@keyframes shake {
  $steps: 20;
  @for $i from 0 through $steps {
    #{percentage($i * (1 / $steps))} {
      clip: rect(random(100) + px, 9999px, random(100) + px, 0);
    }
  }
}

.el-main {
  margin: -60px 0 0 0;
  padding: 0;
}
</style>
