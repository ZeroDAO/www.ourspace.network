<template>
  <div class="home">
    <div class="pioneer">
      <div class="banner banner-xs hidden-xs-only">
        <img class="clound" src="../assets/images/banner/b-b-l.png" />
        <img class="clound" src="../assets/images/banner/b-b-r.png" />
        <img class="clound" src="../assets/images/banner/rainbow.png" />
        <img class="clound" src="../assets/images/banner/cloud-l.png" />
        <img class="clound" src="../assets/images/banner/clound-r-b.png" />
        <img class="clound" src="../assets/images/banner/ball-yellow.png" />
        <img class="clound" src="../assets/images/banner/ball-small.png" />
        <img class="clound" src="../assets/images/banner/star.png" />
        <img class="clound" src="../assets/images/banner/ball-r-b.png" />
        <img class="clound" src="../assets/images/banner/p-run.png" />
        <img class="clound" src="../assets/images/banner/ship.png" />
        <img class="clound" src="../assets/images/banner/p-r.png" />
        <img class="clound" src="../assets/images/banner/cloud-r-b.png" />
      </div>
      <div class="banner banner-sm hidden-sm-and-up">
        <!-- <img class="clound" src="../assets/images/banner/b-b-l.png" /> -->
        <img class="clound" src="../assets/images/banner/b-b-r.png" />
        <img class="clound" src="../assets/images/banner/rainbow.png" />
        <img class="clound" src="../assets/images/banner/cloud-l.png" />
        <img class="clound" src="../assets/images/banner/clound-r-b.png" />
        <img class="clound" src="../assets/images/banner/ball-yellow.png" />
        <img class="clound" src="../assets/images/banner/ball-small.png" />
        <img class="clound" src="../assets/images/banner/star.png" />
        <img class="clound" src="../assets/images/banner/ball-r-b.png" />
        <img class="clound" src="../assets/images/banner/ship.png" />
        <img class="clound" src="../assets/images/banner/cloud-r-b.png" />
      </div>
      <div class="brand">
        <div class="t1 title" data-text="Reputation Engine">
          Reputation Engine
        </div>
        <!-- <p class="t3 white">{{ $t("page.Welcome") }}</p> -->
        <div class="expand">
          <div class="white-paper">
            <a :href="$t('page.technical_white_paper_href')" target="_blank">
              <el-button
                type="primary"
                class="pixel-button-4 pixel-button-4-primary"
                ><i class="iconfont">&#xe6a0; </i
                >{{ $t("page.light_paper") }}</el-button
              >
            </a>
            <!-- <el-link
            :href="$t('page.technical_white_paper_href')"
            target="_blank"
            type="primary"
            :underline="false"
            >{{ $t("page.technical_white_paper") }}</el-link
          > -->
          </div>

          <a href="https://docs.zerodao.net/" target="_blank">
            <el-button class="pixel-button-4 pixel-button-4-white"
              ><i class="iconfont">&#xe68b; </i>Docs</el-button
            >
          </a>
        </div>
        <div class="icon-buttons">
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

    <div class="cards">
      <el-row :gutter="20" class="hidden-xs-only">
        <el-col :xs="24" :sm="12" v-for="(c, i) in lists.cards" :key="c">
          <el-card class="box-card">
            <div slot="header" class="clearfix">
              <span>{{ c.title }}</span>
            </div>
            <div v-for="o in c.tests" :key="o" class="text item">
              {{ o }}
            </div>
            <div class="card-icon">
              <img :src="require('@/assets/images/card' + (i + 1) + '.png')" />
            </div>
            <el-link :href="c.more" type="primary">More...</el-link>
          </el-card></el-col
        >
      </el-row>
      <el-carousel indicator-position="outside" class="hidden-sm-and-up">
        <el-carousel-item v-for="(c, i) in lists.cards" :key="c">
          <el-card class="box-card">
            <div slot="header" class="clearfix">
              <span>{{ c.title }}</span>
            </div>
            <div v-for="o in c.tests" :key="o" class="text item">
              {{ o }}
            </div>
            <div class="card-icon">
              <img :src="require('@/assets/images/card' + (i + 1) + '.png')" />
            </div>
            <el-link :href="c.more" type="primary">More...</el-link>
          </el-card>
        </el-carousel-item>
      </el-carousel>
      <div class="btm-logos">
        <img src="../assets/images/w3f.svg" />
      </div>
    </div>

    <div class="ecology">
      <div class="safe normal-width">
        <p class="white">100% + 2</p>
        <p class="t1 white">Safe and secure</p>
        <p class="white">
          Meeting the most stringent security conditions. <br />100% spam users
          with only two real users can still guarantee the security of the
          reputation system.
        </p>
      </div>
    </div>

    <div class="cards">
      <div class="normal-width">
        <p class="t2">AI-resistant Social Graph Analysis</p>
        <el-table
          :data="tableData"
          style="width: 100%"
          :row-class-name="tableRowClassName"
        >
          <el-table-column prop="category" fixed="left" label="">
          </el-table-column>
          <el-table-column prop="government" label="Digital Government IDs">
            <template slot-scope="scope">
              <iconTable :evaluate="scope.row.government" />
            </template>
          </el-table-column>
          <el-table-column prop="turing" label="Reverse Turing Tests">
            <template slot-scope="scope">
              <iconTable :evaluate="scope.row.turing" />
            </template>
          </el-table-column>
          <el-table-column prop="poap" label="P.O.A.P.">
            <template slot-scope="scope">
              <iconTable :evaluate="scope.row.poap" />
            </template>
          </el-table-column>
          <el-table-column prop="poh" label="Proof Of Humanity">
            <template slot-scope="scope">
              <iconTable :evaluate="scope.row.poh" />
            </template>
          </el-table-column>
          <el-table-column fixed="right" prop="os" label="Ourspace">
            <template slot-scope="scope">
              <iconTable class="os" :evaluate="scope.row.os" />
            </template>
          </el-table-column>
        </el-table>
      </div>
    </div>

    <div class="grey-box">
      <div class="normal-width">
        <p class="t2 white">Supporting</p>
        <div class="support">
          <img src="../assets/images/support/rss3.svg" />
          <img src="../assets/images/support/revery.svg" />
          <img src="../assets/images/support/BitClout.svg" />
          <img src="../assets/images/support/subsocial.svg" />
        </div>
      </div>
    </div>

    <div class="timeline">
      <div class="title">
        <p class="t2 white">{{ $t("page.not_slow") }}</p>
      </div>
      <div class="list" ref="scroll">
        <div class="scroll-content">
          <el-card
            class="scroll-item"
            shadow="always"
            v-for="(item, i) in lists.timeline"
            :key="i"
          >
            <span>{{ item.timestamp }}</span>
            <span>{{ item.quarterly }}</span>
            <span class="hover-w">{{ item.title }}</span>
            <p class="hover-w">{{ item.subtitle }}</p>
            <span class="hover-w">{{ item.text }}</span>
          </el-card>
        </div>
      </div>
    </div>
    <div class="bottom"></div>
  </div>
</template>

<script>
let isLoadList = true;
const limit = 10;
import BScroll from "@better-scroll/core";
import IconTable from "../components/IconTable.vue";

export default {
  data() {
    return {
      tableData: [
        {
          category: "Decentralized",
          government: -1,
          turing: 1,
          poap: 0,
          poh: 1,
          os: 1,
        },
        {
          category: "Security",
          government: -1,
          turing: 0,
          poap: 0,
          poh: 1,
          os: 1,
        },
        {
          category: "Quantifiable",
          government: -1,
          turing: -1,
          poap: -1,
          poh: -1,
          os: 1,
        },
        {
          category: "Scalability",
          government: -1,
          turing: -1,
          poap: -1,
          poh: -1,
          os: 1,
        },
        {
          category: "Self-repair",
          government: 1,
          turing: -1,
          poap: -1,
          poh: -1,
          os: 1,
        },
        {
          category: "Friendly",
          government: 1,
          turing: -1,
          poap: 0,
          poh: -1,
          os: 1,
        },
      ],
    };
  },
  components: {
    iconTable: IconTable,
  },
  computed: {
    lists() {
      return {
        timeline: this.$t("page.timeline"),
        apps: this.$t("page.apps"),
        cards: this.$t("page.cards"),
      };
    },
  },
  created() {},
  mounted() {
    this.init();
  },
  beforeDestroy() {
    this.bs.destroy();
  },
  methods: {
    init() {
      this.bs = new BScroll(this.$refs.scroll, {
        scrollX: true,
        probeType: 3, // listening scroll event
      });
      this.bs.on("scrollStart", () => {
        console.log("scrollStart-");
      });
      this.bs.on("scroll", ({ y }) => {
        console.log("scrolling-");
      });
      this.bs.on("scrollEnd", () => {
        console.log("scrollingEnd");
      });
    },
  },
};
</script>
<style lang="scss">
@import "../theme/colors.scss";

$--primary-pixel: linear-gradient(0deg, $--color-primary 100%, #fff 0);
$--white-pixel: linear-gradient(0deg, #fff 100%, #fff 0);
$--grey-pixel: linear-gradient(0deg, #f8f6f7 100%, #f8f6f7 0);

.home {
  button {
    margin-top: 50px;
  }
  .normal-width {
    max-width: 1200px;
    margin: auto;
    padding: 80px 20px;
  }
  .grey-box {
    background: #aea1df;
    .support {
      width: 100%;
      margin-top: 60px;
      display: flex;
      justify-content: space-between;
      flex-wrap: wrap;
      img {
        height: 50px;
        margin: 15px;
      }
    }
  }
  .os {
    i {
      font-size: 1.5em;
    }
  }
  .ecology-name {
    width: 100%;
    text-align: center;
  }
  .ecology-name:last-child {
    margin-bottom: 20px;
  }
  .safe {
    margin-top: 220px !important;
    margin-bottom: 200px !important;
    p {
      text-align: left !important;
    }
    p:nth-child(1) {
      font-size: 3.5em;
      font-weight: bold;
    }
    .t1 {
      margin-bottom: 1em;
    }
  }
  .banner {
    position: relative;
    width: 100%;
    z-index: -1;
    height: 800px;
    background-image: radial-gradient(#7240e1, #3800b2);
    img {
      position: absolute;
    }
  }
  .banner-xs {
    img:nth-child(1) {
      left: 5%;
    }
    img:nth-child(2) {
      bottom: 0;
      right: 2%;
    }
    img:nth-child(3) {
      left: -5px;
      top: -5px;
    }
    img:nth-child(4) {
      left: 0;
      bottom: 0;
    }
    img:nth-child(5) {
      right: 50px;
      bottom: 0;
    }
    img:nth-child(6) {
      left: 45%;
    }
    img:nth-child(7) {
      left: 55%;
      top: -60%;
      animation: public-transit 10s linear infinite;
      transform-origin: 0% 260%;
    }
    img:nth-child(8) {
      right: 220px;
      bottom: 480px;
      animation: blinking 5s ease infinite;
    }
    img:nth-child(9) {
      right: 0;
      bottom: 0;
    }
    img:nth-child(10) {
      left: 20%;
      animation: floating-left 6s ease infinite;
    }
    img:nth-child(11) {
      left: -50px;
      animation: ship 3s ease infinite;
    }
    img:nth-child(12) {
      bottom: 180px;
      right: 130px;
    }
    img:nth-child(13) {
      bottom: 0;
      right: 0;
    }
  }

  .banner-sm {
    img:nth-child(1) {
      bottom: 0;
      right: 2%;
    }
    img:nth-child(2) {
      left: -5px;
      top: -5px;
    }
    img:nth-child(3) {
      left: 0;
      bottom: 0;
    }
    img:nth-child(4) {
      right: 50px;
      bottom: 0;
    }
    img:nth-child(5) {
      left: 45%;
    }
    img:nth-child(6) {
      left: 55%;
      top: -60%;
      animation: public-transit 10s linear infinite;
      transform-origin: 0% 260%;
    }
    img:nth-child(7) {
      width: 0;
      right: 220px;
      bottom: 480px;
      animation: blinking 5s ease infinite;
    }
    img:nth-child(8) {
      right: 0;
      bottom: 0;
      width: 70%;
    }
    img:nth-child(9) {
      left: -50px;
      width: 90%;
      animation: ship 3s ease infinite;
    }
    img:nth-child(10) {
      bottom: 0;
      right: 0;
      width: 80%;
    }
  }

  .brand {
    position: absolute;
    top: 0;
    width: 100%;
    margin-top: 150px;
  }

  @keyframes public-transit {
    from {
      transform: rotate(0deg);
    }
    to {
      transform: rotate(360deg);
    }
  }

  @keyframes blinking {
    0% {
      filter: brightness(100%);
    }

    50% {
      filter: brightness(70%);
    }

    100% {
      filter: brightness(100%);
    }
  }

  @keyframes floating-left {
    0% {
      bottom: 410px;
    }

    50% {
      bottom: 420px;
    }

    100% {
      bottom: 410px;
    }
  }

  .btm-logos {
    width: 100%;
    text-align: center;
    img {
      height: 150px;
    }
  }

  @keyframes ship {
    0% {
      transform: rotate(0deg);
      bottom: 80px;
    }

    50% {
      transform: rotate(1deg);
      bottom: 60px;
    }

    100% {
      transform: rotate(0deg);
      bottom: 80px;
    }
  }
  .expand {
    margin: 8em auto 6em auto;
    display: flex;
    justify-content: center;
    flex-wrap: wrap;
    .white-paper {
      position: relative;
      margin: auto 5px;
      .el-link {
        position: absolute;
        top: 130px;
        left: 0;
        width: 100%;
      }
    }
  }
  .apps {
    position: relative;
    width: 100%;
    text-align: center;
    background: url(../assets/images/circle.svg) no-repeat center;
    background-size: 100%;
    img {
      width: 100%;
      max-width: 1200px;
    }
    .ecology-name {
      margin-top: -20px;
    }
  }
  .decoration {
    filter: drop-shadow(0 5px 15px #3435ff);
    text-align: center;
    img {
      width: 90%;
      margin: auto;
    }
  }
  .list {
    position: relative;
    margin: auto;
    max-width: 1500px;
    white-space: nowrap;
    border-radius: 5px;
    overflow: hidden;
    .scroll-content {
      display: inline-block;
    }
    .scroll-item {
      height: 13em;
      width: 9.5em;
      font-size: 24px;
      display: inline-block;
      text-align: center;
      border-radius: 20px;
      border: none !important;
      margin-right: 20px;

      :hover {
        .hover-w {
          color: #fff;
        }
      }

      .el-card__body {
        display: flex;
        flex-flow: column;
        span:nth-child(1) {
          font-size: 3em;
          text-align: left;
          color: #fff;
          text-shadow: 1px 1px 10px #ff6d00;
        }
        span:nth-child(2) {
          text-align: right;
          color: #fff;
        }
        span:nth-child(3) {
          text-align: left;
          margin-top: 1em;
          font-weight: bold;
        }
        p {
          font-size: 0.6em;
          text-align: left;
          line-height: 1em;
          margin-top: 0;
        }
        span:nth-child(5) {
          width: 100%;
          font-size: 0.5em;
          text-align: left;
          margin-top: 2em;
          white-space: normal;
        }
      }
    }

    .scroll-item:nth-child(1) {
      background-color: #fc4930;
    }
    .scroll-item:nth-child(2) {
      background-color: #03c936;
    }
    .scroll-item:nth-child(3) {
      background-color: #ff8a00;
    }
    .scroll-item:nth-child(4) {
      background-color: #7256ed;
    }
    .scroll-item:nth-child(5) {
      background-color: #5390f7;
    }
    .scroll-item:nth-child(6) {
      background-color: #bcce47;
    }
  }
  .protocols {
    .bg {
      width: 100%;
      margin: 2em auto;
      height: 2.5em;
      background-color: #fff;
      box-shadow: 0 3px 5px #3435ff;
    }
    .content {
      display: flex;
      justify-content: space-around;
      margin-top: -5.8em;
      max-width: 1080px;
      margin-left: auto;
      margin-right: auto;
      .item {
        display: flex;
        align-items: center;
      }
      span {
        padding: 20px;
        background: #fff;
        box-shadow: 2px 3px 10px #e8a8c3;
        z-index: 10;
      }
      img {
        height: 5em;
        animation-timing-function: ease-in-out;
        animation-iteration-count: infinite;
        animation-duration: 1s;
        animation-name: arrow;
        filter: drop-shadow(0 5px 15px #e8a8c3);
      }
    }
  }
  .base {
    width: 100%;
    height: 15em;
    position: relative;
    overflow: hidden;
    .ecology-name {
      position: absolute;
      top: 13em;
    }
    .ellips-text,
    .ellips {
      border-radius: 10px;
      background-color: #e4f0fe;
      background-image: linear-gradient(
        45deg,
        #e4f0fe 12%,
        #dcf9ff 53%,
        #e8cefb 73%,
        #e1e0ff 92%
      );
      box-shadow: -2px 3px 5px #d4baf1;
    }

    .ellips {
      position: absolute;
      animation-timing-function: linear;
      animation-iteration-count: infinite;
    }
    .ellips:nth-child(1) {
      width: 10%;
      height: 1rem;
      animation-duration: 10s;
      animation-name: move-right;
      top: 2rem;
    }

    .ellips:nth-child(2) {
      width: 15%;
      height: 1rem;
      animation-duration: 8s;
      animation-name: move-right;
      top: 2.4rem;
    }

    .ellips:nth-child(3) {
      width: 15px;
      height: 15px;
      animation-duration: 4s;
      animation-name: move-right;
      top: 2.6rem;
    }
    .ellips:nth-child(4) {
      width: 15%;
      height: 4rem;
      animation-duration: 12s;
      animation-name: move-right;
      top: 2.8rem;
    }
    .ellips:nth-child(5) {
      width: 12%;
      height: 5rem;
      animation-duration: 5s;
      animation-name: move-right;
      top: 3rem;
    }
    .ellips:nth-child(6) {
      width: 12%;
      height: 5rem;
      animation-duration: 10s;
      animation-name: move-left;
      top: 8rem;
    }
    .ellips:nth-child(7) {
      width: 1rem;
      height: 1rem;
      animation-duration: 4s;
      animation-name: move-left;
      top: 12rem;
    }
    .ellips:nth-child(8) {
      width: 12%;
      height: 1rem;
      animation-duration: 6s;
      animation-name: move-left;
      top: 12rem;
    }
    .ellips:nth-child(9) {
      width: 12%;
      height: 3rem;
      animation-duration: 13s;
      animation-name: move-left;
      top: 10rem;
    }
    .ellips:nth-child(10) {
      width: 3em;
      height: 3em;
      border-radius: 100%;
      animation-duration: 18s;
      animation-name: move-left;
      top: 10rem;
    }
    .t4 {
      position: absolute;
      width: 100%;
      display: flex;
      justify-content: center;
    }
    .ellips-text {
      margin: 10px;
    }
    .base-t {
      top: 2em;
      .ellips-text:nth-child(1) {
        padding: 1em;
        width: 18%;
        text-align: right;
      }
      .ellips-text:nth-child(2) {
        padding: 1em;
        width: 30%;
        text-align: left;
        min-width: 10em;
      }
    }

    .base-b {
      top: 6em;
      .ellips-text:nth-child(1) {
        padding: 1em;
        width: 20%;
        min-width: 7em;
        text-align: right;
      }
      .ellips-text:nth-child(2) {
        padding: 1em;
        width: 25%;
        text-align: left;
        min-width: 8em;
      }
    }
  }
  @keyframes move-right {
    0% {
      left: -200px;
    }
    50% {
      left: 50%;
    }
    100% {
      left: 100%;
    }
  }
  @keyframes move-left {
    0% {
      right: -200px;
    }
    50% {
      right: 50%;
    }
    100% {
      right: 100%;
    }
  }
  @keyframes arrow {
    0% {
      transform: translateX(0);
      opacity: 0;
    }
    90% {
      transform: translateX(40px);
      opacity: 1;
    }
    100% {
      transform: translateX(50px);
      opacity: 0;
    }
  }
  .ball {
    position: absolute;
    .ball-card {
      background: $--grey-pixel, $--grey-pixel, $--grey-pixel;
      background-repeat: no-repeat, no-repeat, no-repeat;
      background-position: center 50%, center 50%, center 50%;
      background-size: 76% 76%, 100% 52%, 52% 100%;
      border: none;
      position: relative;

      &::after {
        content: "";
        width: 50%;
        height: 50%;
        position: absolute;
        box-shadow: -10px 10px 20px #f4cbdd;
        left: 0;
        right: 0;
        top: 0;
        bottom: 0;
        margin: auto;
      }
    }
  }

  .cards {
    background: #fff;
    padding: 50px 0;
    box-shadow: 0 10px 20px #4827cc;

    .el-link {
      margin-top: 26px;
      position: absolute;
      bottom: 20px;
      left: 30px;
    }
    .el-row {
      max-width: 1200px;
      margin: auto !important;
    }
    .clearfix {
      font-size: 1.6em;
      font-weight: bold;
    }

    .hidden-xs-only {
      .card-icon {
        position: absolute;
        right: 20px;
        top: 20px;
        img {
          width: 120px;
        }
      }
      .el-card__body {
        height: 6em;
        overflow: hidden;
      }
    }
    .hidden-sm-and-up {
      .card-icon {
        position: absolute;
        right: 10px;
        bottom: 10px;
        img {
          width: 120px;
        }
      }
      .el-card {
        height: 260px;
      }
    }
    .el-card {
      padding: 30px;
      margin-top: 20px;
      border-radius: 20px;
      position: relative;
    }
    .el-card__header {
      border: none;
    }
    .el-carousel {
      margin: auto 10px;
      margin-bottom: -20px;
      margin-top: -30px;
    }
    .el-carousel__container {
      height: 350px;
    }
    .el-row,
    .el-carousel__container {
      .el-col:nth-child(1),
      .el-carousel__item:nth-child(3) {
        .clearfix {
          color: #3435ff;
        }
      }
      .el-col:nth-child(2),
      .el-carousel__item:nth-child(4) {
        .clearfix {
          color: #ffad00;
        }
      }
      .el-col:nth-child(3),
      .el-carousel__item:nth-child(5) {
        .clearfix {
          color: #fe53ed;
        }
      }
      .el-col:nth-child(4),
      .el-carousel__item:nth-child(6) {
        .clearfix {
          color: #ec0b2b;
        }
      }
    }
  }
  .ecology {
    overflow: hidden;
    p {
      text-align: center;
      margin: 0;
    }
    .circle {
      width: 200%;
      height: 200%;
      border: 1px solid black;
      border-radius: 100%;
      border-bottom: none;
    }
  }
  .pixel-button-4:hover {
    filter: drop-shadow(0 5px 15px #5366dd);
  }

  .pixel-button-4-primary {
    background: $--primary-pixel, $--primary-pixel, $--primary-pixel,
      $--primary-pixel;
  }

  .pixel-button-4-white {
    background: $--white-pixel, $--white-pixel, $--white-pixel, $--white-pixel;
  }

  .pixel-button-4 {
    background-repeat: no-repeat, no-repeat, no-repeat, no-repeat;
    background-position: center 50%, center 50%, center 50%, center 50%;
    background-size: calc(100% - 12px) calc(100% - 20px),
      calc(100% - 24px) calc(100% - 8px), 100% calc(100% - 32px),
      calc(100% - 40px) 100%;
    border: none;
    min-height: 60px;
    filter: drop-shadow(0 5px 15px #a2adf3);
    min-width: 150px;
  }
  .timeline {
    width: 100%;
    padding: 20px 0;
    background-color: #001835;
    .title {
      width: 100%;
    }
  }
}
.bottom {
  background-color: #4400ff;
  height: 50px;
}
</style>
