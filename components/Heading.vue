<template>
  <div class="heading">
    <div class="image">
      <img src="heading.jpg" alt="A picture of me">
    </div>
    <div class="text">
      <h1>Joost Lekkerkerker</h1>
      <h3>Developer with a passion for programming and design</h3>
    </div>
  </div>
</template>

<script>
export default {
  name: 'Heading'
}
</script>

<style lang="scss" scoped>

.heading {
  text-align: left;
  display: flex;
  justify-content: center;

  .image {
    display: inline-block;
    width: 33%;
    img {
      width: 100%;
    }
  }

  .text {
    max-width: 33%;
    margin-left: 40px;
    display: flex;
    flex-direction: column;
    align-content: center;
    justify-content: center;
  }
}

</style>
