<template>
  <div class="header">
    <div class="header-left">
      <img :src="mainLogo" alt="Logo principal" class="header-logo" />
      <div>Accueil</div>
      <div>À propos</div>
    </div>
    <div class="header-right">
      <span class="header-icon-container">
        <img :src="linkedinIcon" />
        <img :src="instagramIcon" />
      </span>
    </div>
  </div>
</template>

<script setup lang="ts">
// Import des ressources
import mainLogo from 'src/assets/images/main-logo.png';
import linkedinIcon from 'src/assets/images/linkedin-icon.png';
import instagramIcon from 'src/assets/images/instagram-icon.png';
</script>
