<template>
  <transition
    leave-active-class="transition-all duration-1000 ease-in-out"
    leave-from-class="opacity-100 scale-100"
    leave-to-class="opacity-0 scale-110 pointer-events-none"
  >
    <div 
      v-if="isOpen"
      class="fixed inset-0 z-[100] bg-[#F7F0E8] flex items-center justify-center p-4 overflow-hidden select-none [perspective:1200px]"
    >
      <!-- Background Ambient Warm Glows -->
      <div class="absolute inset-0 bg-[radial-gradient(#e2d2c2_1px,transparent_1px)] [background-size:24px_24px] opacity-50"></div>
      <div class="absolute -top-40 -left-40 w-[30rem] h-[30rem] bg-terracotta-200/40 rounded-full blur-3xl"></div>
      <div class="absolute -bottom-40 -right-40 w-[30rem] h-[30rem] bg-olive-200/40 rounded-full blur-3xl"></div>

      <!-- Main Envelope 3D Container -->
      <div 
        :class="[
          'relative max-w-md w-full transition-all duration-1000 transform [transform-style:preserve-3d]',
          isUnfoldingLetter ? 'scale-110 -translate-y-12 opacity-0 blur-xs' : 'scale-100 translate-y-0 opacity-100'
        ]"
      >
        
        <!-- Outer Envelope Base Body -->
        <div class="relative bg-[#FAF4EE] rounded-3xl p-6 sm:p-10 text-center border-2 border-terracotta-200/90 shadow-[0_35px_90px_rgba(139,81,44,0.28)] overflow-visible">
          
          <!-- REAL 3D TRIANGULAR ENVELOPE FLAP (Points Downwards, Flips UPWARDS 180°) -->
          <div 
            :class="[
              'absolute top-0 left-0 right-0 h-44 sm:h-52 z-30 origin-top transition-transform duration-700 ease-in-out [transform-style:preserve-3d] drop-shadow-md pointer-events-none',
              isOpeningFlap ? '[transform:rotateX(-180deg)]' : '[transform:rotateX(0deg)]'
            ]"
          >
            <!-- Triangular Shape using CSS Clip-Path -->
            <div 
              class="w-full h-full bg-[#EFE3D5] border-t-2 border-terracotta-300/80 [clip-path:polygon(0_0,_100%_0,_50%_100%)] flex flex-col items-center justify-end pb-3"
            >
              <!-- Gold Foil Crest Accent on Flap -->
              <div class="w-9 h-9 rounded-full bg-gradient-to-b from-terracotta-700 to-terracotta-900 border border-cream-200 flex items-center justify-center shadow-lg mb-1">
                <Sparkles class="w-4 h-4 text-cream-100 animate-pulse" />
              </div>
            </div>
          </div>

          <!-- Inside Letter Card Content (Slides Up when envelope unfolds) -->
          <div 
            :class="[
              'relative z-10 pt-16 sm:pt-20 transition-all duration-700 ease-out',
              isOpeningFlap ? '-translate-y-6 scale-102' : 'translate-y-0'
            ]"
          >
            <!-- Monogram Emblem -->
            <div class="w-16 h-16 rounded-full bg-cream-200 border-2 border-terracotta-300 flex items-center justify-center mx-auto mb-4 text-terracotta-700 shadow-inner">
              <span class="font-serif text-2xl font-bold tracking-wider">D&amp;M</span>
            </div>

            <span class="text-[11px] uppercase tracking-editorial text-olive-700 font-semibold mb-1 block">Estás Invitado a Nuestra Boda</span>

            <!-- Couple Names -->
            <h1 class="font-serif text-4xl sm:text-5xl text-charcoal-900 font-normal mb-2 leading-tight">
              Dilan <span class="font-serif italic text-terracotta-600 text-3xl sm:text-4xl">&amp;</span> Mayra
            </h1>

            <div class="w-20 h-0.5 bg-terracotta-400 mx-auto my-3"></div>
            
            <p class="font-serif italic text-base sm:text-lg text-charcoal-800 mb-1">
              29 de Noviembre de 2026
            </p>

            <p class="text-xs text-olive-800 tracking-wider uppercase font-medium mb-8">
              Tenjo, Cundinamarca
            </p>

            <!-- Wax Seal / Open Button -->
            <button 
              @click="openEnvelope"
              :disabled="isOpeningFlap"
              class="group relative inline-flex items-center justify-center gap-3 bg-gradient-to-r from-terracotta-700 via-terracotta-800 to-terracotta-900 text-white font-medium py-4 px-8 rounded-full shadow-lg hover:shadow-2xl transform hover:-translate-y-1 active:translate-y-0 transition-all duration-300 uppercase tracking-widest text-xs cursor-pointer border border-terracotta-400 disabled:opacity-50 z-40"
            >
              <MailOpen class="w-5 h-5 text-terracotta-200 group-hover:scale-110 transition-transform" />
              <span>Abrir Invitación</span>
              <Sparkles class="w-4 h-4 text-cream-200 animate-pulse" />
            </button>

            <p class="text-[11px] text-charcoal-800 mt-4 italic">
              Toca para desdoblar el sobre y activar la música 🎵
            </p>
          </div>

        </div>

      </div>

    </div>
  </transition>
</template>

<script setup>
import { ref, onMounted } from 'vue'
import { MailOpen, Sparkles } from 'lucide-vue-next'

const emit = defineEmits(['open'])

const isOpen = ref(true)
const isOpeningFlap = ref(false)
const isUnfoldingLetter = ref(false)

const openEnvelope = () => {
  // Step 1: Flap flips UPWARDS 180 degrees
  isOpeningFlap.value = true
  
  // Immediately trigger background music playback on tap
  emit('open')

  // Step 2: Letter slides up & expands
  setTimeout(() => {
    isUnfoldingLetter.value = true
  }, 450)

  // Step 3: Complete transition & unlock body scroll
  setTimeout(() => {
    isOpen.value = false
    document.body.style.overflow = ''
  }, 1150)
}

onMounted(() => {
  document.body.style.overflow = 'hidden'
})
</script>
