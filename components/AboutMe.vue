<template>
  <div>
    <h2>About me</h2>
    <p>
      I am Joost Lekkerkerker, a 21 year old IT student. I live in Harmelen, the Netherlands. I have experience in Java, Spring boot and Vue. Nevertheless, I am also curious to learn new languages and concepts.
    </p>
  </div>
</template>

<script>
export default {
  name: 'AboutMe'
}
</script>

<style lang="scss" scoped>
div {
  margin-top: 40px;
  p {
    margin-top: 20px;
    margin-left: 8px;
    margin-right: 8px;

    @media screen and (min-width: $bp-tablet-md) {
      width: 50%;
      margin-left: auto;
      margin-right: auto;
    }
  }
}
</style>
