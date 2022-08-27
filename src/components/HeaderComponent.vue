<template>
  <div class="header">
    <div class="header-left">
      <a href="/">
        <img :src="mainLogo" alt="Logo principal" class="header-logo" />
      </a>
      <q-item
        class="header-menu"
        active-class="header-menu-active"
        :to="{ path: '/' }"
        clickable
        :active="activeLink === 'home'"
        @click="activeLink = 'home'"
      >
        Acceuil
      </q-item>
      <q-item
        class="header-menu"
        active-class="header-menu-active"
        :to="{ name: 'about' }"
        clickable
        :active="activeLink === 'about'"
        @click="activeLink = 'about'"
      >
        A propos
      </q-item>
    </div>
    <div class="header-right">
      <span class="header-icon-container">
        <a
          href="https://www.linkedin.com/in/valentin-marguerie/"
          target="_blank"
          rel="noreferrer"
        >
          <img :src="linkedinIcon" />
        </a>
        <a
          href="https://www.instagram.com/valentin_marguerie/"
          target="_blank"
          rel="noreferrer"
        >
          <img :src="instagramIcon" />
        </a>
      </span>
    </div>
  </div>
</template>

<script setup lang="ts">
import { ref } from 'vue';

// Import des ressources
import mainLogo from 'src/assets/images/main-logo.png';
import linkedinIcon from 'src/assets/images/linkedin-icon.png';
import instagramIcon from 'src/assets/images/instagram-icon.png';

// Ui const
const activeLink = ref('home');
</script>
