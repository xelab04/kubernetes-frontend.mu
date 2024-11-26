<script setup lang="ts">
import { DISCORD_URL, GITHUB_URL, INSTAGRAM_URL, LINKEDIN_URL, TWITTER_URL, WHATSAPP_URL } from '@/constants'

const socialMediaPlatforms: Record<string, string> = {
  discord: DISCORD_URL,
  github: GITHUB_URL,
  whatsapp: WHATSAPP_URL,
  twitter: TWITTER_URL,
  instagram: INSTAGRAM_URL,
  linkedin: LINKEDIN_URL,
}
</script>

<template>
  <nav class="fixed bottom-[50px] gap-4 flex-col pl-4 justify-end w-10 hidden xl:flex z-30">
    <a
      v-for="(url, platform) in socialMediaPlatforms"
      :key="platform"
      :href="url"
      :aria-label="platform"
      target="_blank"
      rel="noopener noreferrer nofollow"
      class="text-verse-500 dark:text-verse-200 text-sm md:text-normal hover:animate-bounce hover:ease-in-out hover:delay-200"
    >
      <IconDiscord v-if="platform === 'discord'" class="w-6" />
      <IconGithub v-if="platform === 'github'" class="w-6" />
      <IconWhatsappCommunity v-if="platform === 'whatsapp'" class="w-6" />
      <IconSocialTwitter v-if="platform === 'twitter'" class="w-6" />
      <IconInstagram v-if="platform === 'instagram'" class="w-6" />
      <IconLinkedin v-if="platform === 'linkedin'" class="w-6" />
    </a>
  </nav>
</template>
