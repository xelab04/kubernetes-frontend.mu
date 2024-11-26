<script setup lang="ts">
import useAuth, { getClient } from '@/auth-utils/useAuth'
import {
    AlertDialog,
    AlertDialogAction,
    AlertDialogCancel,
    AlertDialogContent,
    AlertDialogDescription,
    AlertDialogFooter,
    AlertDialogHeader,
    AlertDialogTitle,
    AlertDialogTrigger,
} from '@/components/ui/alert-dialog'
import { Button } from '@/components/ui/button'

const { oAuthLogin } = useAuth(getClient())

function triggerRedirectToGithub() {
    window.location.href = oAuthLogin('github')!
}
</script>

<template>
    <AlertDialog>
        <AlertDialogTrigger as-child>
            <div class="flex w-full items-center justify-center gap-3 rounded-md bg-[#000000]  hover:bg-black/50 hover:cursor-pointer px-3 py-1.5 text-white focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-[#24292F]"
                disabled>
                <svg class="h-5 w-5" aria-hidden="true" fill="currentColor" viewBox="0 0 20 20">
                    <path fill-rule="evenodd"
                        d="M10 0C4.477 0 0 4.484 0 10.017c0 4.425 2.865 8.18 6.839 9.504.5.092.682-.217.682-.483 0-.237-.008-.868-.013-1.703-2.782.605-3.369-1.343-3.369-1.343-.454-1.158-1.11-1.466-1.11-1.466-.908-.62.069-.608.069-.608 1.003.07 1.531 1.032 1.531 1.032.892 1.53 2.341 1.088 2.91.832.092-.647.35-1.088.636-1.338-2.22-.253-4.555-1.113-4.555-4.951 0-1.093.39-1.988 1.029-2.688-.103-.253-.446-1.272.098-2.65 0 0 .84-.27 2.75 1.026A9.564 9.564 0 0110 4.844c.85.004 1.705.115 2.504.337 1.909-1.296 2.747-1.027 2.747-1.027.546 1.379.203 2.398.1 2.651.64.7 1.028 1.595 1.028 2.688 0 3.848-2.339 4.695-4.566 4.942.359.31.678.921.678 1.856 0 1.338-.012 2.419-.012 2.747 0 .268.18.58.688.482A10.019 10.019 0 0020 10.017C20 4.484 15.522 0 10 0z"
                        clip-rule="evenodd" />
                </svg>
                <span class="text-sm font-semibold leading-6">Continue with GitHub</span>
            </div>
        </AlertDialogTrigger>
        <AlertDialogContent class="border-white/20">
            <AlertDialogHeader>
                <AlertDialogTitle class="flex gap-2 items-center">
                    <Icon name="carbon:logo-github" class="block w-5 h-5 p-0.5 " />

                    Login with GitHub is experimental !
                </AlertDialogTitle>
                <AlertDialogDescription>
                    <ol class="list-decimal list-outside pl-4 space-y-2">
                        <li>
                            Make sure your email address is <a target="_blank" class="underline"
                                href="https://github.com/settings/emails#toggle_visibility_note">publicly visible on
                                GitHub. </a>
                        </li>
                        <li>
                            If you have logged in with a Google account previously, the same email will not work if it's
                            associated to your github account.
                        </li>
                    </ol>
                </AlertDialogDescription>
            </AlertDialogHeader>
            <AlertDialogFooter>
                <AlertDialogCancel>Cancel</AlertDialogCancel>
                <AlertDialogAction @click="triggerRedirectToGithub()">
                    Continue
                </AlertDialogAction>
            </AlertDialogFooter>
        </AlertDialogContent>
    </AlertDialog>
</template>
