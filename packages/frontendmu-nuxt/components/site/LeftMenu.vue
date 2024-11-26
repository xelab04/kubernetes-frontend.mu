<script setup lang="ts">
import { DISCORD_URL, GITHUB_URL, INSTAGRAM_URL, LINKEDIN_URL, TWITTER_URL, WHATSAPP_URL } from '@/constants'
</script>

<template>
  <nav
    class="fixed bottom-[50px] gap-4 flex-col pl-4 justify-end w-10 hidden xl:flex z-30"
  >
    <a
      aria-label="Discord"
      target="_blank"
      :href="DISCORD_URL"
      rel="noopener noreferrer nofollow"
      class="text-verse-500 dark:text-verse-200 text-sm md:text-normal hover:animate-bounce hover:ease-in-out hover:delay-200"
    >
      <IconDiscord class="w-6" />
    </a>

    <a
      aria-label="Github"
      target="_blank"
      :href="GITHUB_URL"
      rel="noopener noreferrer nofollow"
      class="text-verse-500 dark:text-verse-200 text-sm md:text-normal hover:animate-bounce hover:ease-in-out hover:delay-200"
    >
      <IconGithub class="w-6" />
    </a>

    <a
      aria-label="Whatsapp"
      target="_blank"
      :href="WHATSAPP_URL"
      rel="noopener noreferrer nofollow"
      class="text-verse-500 dark:text-verse-200 text-sm md:text-normal hover:animate-bounce hover:ease-in-out hover:delay-200"
    >
      <IconWhatsappCommunity class="w-6" />
    </a>

    <a
      aria-label="Twitter"
      target="_blank"
      :href="TWITTER_URL"
      rel="noopener noreferrer nofollow"
      class="text-verse-500 dark:text-verse-200 text-sm md:text-normal hover:animate-bounce hover:ease-in-out hover:delay-200"
    >
      <IconSocialTwitter class="w-6" />
    </a>

    <a
      aria-label="Instagram"
      target="_blank"
      :href="INSTAGRAM_URL"
      rel="noopener noreferrer nofollow"
      class="text-verse-500 dark:text-verse-200 text-sm md:text-normal hover:animate-bounce hover:ease-in-out hover:delay-200"
    >
      <IconInstagram class="w-6" />
    </a>

    <a
      aria-label="LinkedIn"
      target="_blank"
      :href="LINKEDIN_URL"
      rel="noopener noreferrer nofollow"
      class="text-verse-500 dark:text-verse-200 text-sm md:text-normal hover:animate-bounce hover:ease-in-out hover:delay-200"
    >
      <IconLinkedin class="w-6" />
    </a>
  </nav>
</template>
