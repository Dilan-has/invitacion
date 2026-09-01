<template>
  <transition
    leave-active-class="transition-all duration-1000 ease-in-out"
    leave-from-class="opacity-100 scale-100"
    leave-to-class="opacity-0 scale-105 pointer-events-none"
  >
    <div 
      v-if="isOpen"
      class="fixed inset-0 z-[100] bg-[#FAF4EE] flex items-center justify-center p-4 overflow-hidden select-none"
    >
      <!-- Background Decorative Elements -->
      <div class="absolute inset-0 bg-[radial-gradient(#e5d5c5_1px,transparent_1px)] [background-size:24px_24px] opacity-40"></div>
      <div class="absolute -top-32 -left-32 w-96 h-96 bg-terracotta-200/30 rounded-full blur-3xl"></div>
      <div class="absolute -bottom-32 -right-32 w-96 h-96 bg-olive-200/30 rounded-full blur-3xl"></div>

      <!-- Main Envelope Card Container -->
      <div 
        :class="[
          'relative max-w-lg w-full bg-[#FFFBF7] rounded-[2rem] p-8 sm:p-12 text-center border-2 border-terracotta-200/80 shadow-[0_25px_70px_rgba(139,81,44,0.22)] transition-all duration-1000 transform',
          isOpening ? 'scale-110 rotate-1 opacity-0 blur-sm' : 'scale-100 rotate-0 opacity-100'
        ]"
      >
        <!-- Gold / Terracotta Top Ornament -->
        <div class="w-16 h-16 rounded-full bg-cream-200 border-2 border-terracotta-300 flex items-center justify-center mx-auto mb-6 text-terracotta-700 shadow-inner">
          <span class="font-serif text-2xl font-bold tracking-wider">D&amp;M</span>
        </div>

        <span class="text-xs uppercase tracking-editorial text-olive-700 font-semibold mb-2 block">Estás Invitado a Nuestra Boda</span>

        <!-- Couple Names -->
        <h1 class="font-serif text-4xl sm:text-5xl text-charcoal-900 font-normal mb-3 leading-tight">
          Dilan <span class="font-serif italic text-terracotta-600 text-3xl sm:text-4xl">&amp;</span> Mayra
        </h1>

        <!-- Date & Location -->
        <div class="w-20 h-0.5 bg-terracotta-400 mx-auto my-4"></div>
        
        <p class="font-serif italic text-base sm:text-lg text-charcoal-800 mb-2">
          29 de Noviembre de 2026
        </p>

        <p class="text-xs text-olive-800 tracking-wider uppercase font-medium mb-8">
          Tenjo, Cundinamarca
        </p>

        <!-- Wax Seal / Open Button -->
        <button 
          @click="openEnvelope"
          class="group relative inline-flex items-center justify-center gap-3 bg-gradient-to-r from-terracotta-700 via-terracotta-800 to-terracotta-900 text-white font-medium py-4 px-8 rounded-full shadow-lg hover:shadow-2xl transform hover:-translate-y-1 active:translate-y-0 transition-all duration-300 uppercase tracking-widest text-xs cursor-pointer border border-terracotta-400"
        >
          <MailOpen class="w-5 h-5 text-terracotta-200 group-hover:scale-110 transition-transform" />
          <span>Abrir Invitación</span>
          <Sparkles class="w-4 h-4 text-cream-200 animate-pulse" />
        </button>

        <p class="text-[11px] text-charcoal-800 mt-5 italic">
          Haz clic para abrir el sobre y activar la música 🎵
        </p>

      </div>

    </div>
  </transition>
</template>

<script setup>
import { ref, onMounted } from 'vue'
import { MailOpen, Sparkles } from 'lucide-vue-next'

const emit = defineEmits(['open'])

const isOpen = ref(true)
const isOpening = ref(false)

const openEnvelope = () => {
  isOpening.value = true
  
  // Trigger audio playback immediately on user interaction
  emit('open')

  setTimeout(() => {
    isOpen.value = false
    document.body.style.overflow = ''
  }, 700)
}

onMounted(() => {
  // Lock scroll until invitation is opened
  document.body.style.overflow = 'hidden'
})
</script>
