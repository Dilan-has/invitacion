<template>
  <header 
    :class="[
      'fixed top-0 left-0 right-0 z-40 transition-all duration-500 ease-in-out px-4 py-3 md:py-4',
      isScrolled ? 'bg-[#fff8f3]/90 backdrop-blur-md shadow-sm border-b border-terracotta-100' : 'bg-transparent'
    ]"
  >
    <div class="max-w-6xl mx-auto flex items-center justify-between">
      <!-- Monogram Logo -->
      <a href="#hero" class="group flex items-center gap-2">
        <span class="font-serif text-2xl md:text-3xl text-terracotta-700 tracking-wider font-bold">D&M</span>
        <span class="text-xs uppercase tracking-editorial font-sans text-olive-600 hidden sm:inline-block border-l border-terracotta-200 pl-2">29.11.2026</span>
      </a>

      <!-- Desktop Links -->
      <nav class="hidden md:flex items-center space-x-6 lg:space-x-8 text-xs font-medium uppercase tracking-widest text-charcoal-900">
        <a href="#ceremonia" class="hover:text-terracotta-700 transition-colors duration-200 py-1 border-b border-transparent hover:border-terracotta-700">Ceremonia</a>
        <a href="#dresscode" class="hover:text-terracotta-700 transition-colors duration-200 py-1 border-b border-transparent hover:border-terracotta-700">Dress Code</a>
        <a href="#galeria" class="hover:text-terracotta-700 transition-colors duration-200 py-1 border-b border-transparent hover:border-terracotta-700">Galería</a>
        <a href="#recomendaciones" class="hover:text-terracotta-700 transition-colors duration-200 py-1 border-b border-transparent hover:border-terracotta-700">Recomendaciones</a>
        <a href="#regalos" class="hover:text-terracotta-700 transition-colors duration-200 py-1 border-b border-transparent hover:border-terracotta-700">Regalos</a>
        <a href="#rsvp" class="bg-terracotta-700 hover:bg-terracotta-800 text-white px-4 py-2 rounded-full transition-all duration-300 shadow-sm hover:shadow">Confirmar</a>
      </nav>


      <!-- Audio Control & Mobile Menu Button -->
      <div class="flex items-center gap-3">
        <!-- Audio Toggle Button -->
        <button 
          @click="$emit('toggle-audio')"
          class="flex items-center gap-2 bg-cream-200/80 hover:bg-terracotta-100 text-terracotta-800 px-3 py-1.5 rounded-full border border-terracotta-200 transition-all duration-300 text-xs font-medium"
          :aria-label="isPlayingAudio ? 'Pausar música' : 'Reproducir música'"
          title="Música de fondo"
        >
          <div v-if="isPlayingAudio" class="flex items-end gap-0.5 h-3.5 px-0.5">
            <span class="w-0.5 bg-terracotta-700 rounded-full animate-equalizer-1"></span>
            <span class="w-0.5 bg-terracotta-700 rounded-full animate-equalizer-2"></span>
            <span class="w-0.5 bg-terracotta-700 rounded-full animate-equalizer-3"></span>
          </div>
          <Volume2 v-else-if="!isPlayingAudio && isAudioLoaded" class="w-3.5 h-3.5 text-terracotta-600" />
          <VolumeX v-else class="w-3.5 h-3.5 text-charcoal-400" />
          <span class="hidden sm:inline text-[11px] uppercase tracking-wider font-sans">
            {{ isPlayingAudio ? 'Música ON' : 'Música' }}
          </span>
        </button>

        <!-- Mobile Menu Toggle -->
        <button 
          @click="isMobileMenuOpen = !isMobileMenuOpen"
          class="md:hidden p-2 text-terracotta-800 hover:text-terracotta-600 focus:outline-none"
          aria-label="Menu"
        >
          <Menu v-if="!isMobileMenuOpen" class="w-6 h-6" />
          <X v-else class="w-6 h-6" />
        </button>
      </div>
    </div>

    <!-- Mobile Dropdown Navigation -->
    <transition
      enter-active-class="transition duration-300 ease-out"
      enter-from-class="opacity-0 -translate-y-4"
      enter-to-class="opacity-100 translate-y-0"
      leave-active-class="transition duration-200 ease-in"
      leave-from-class="opacity-100 translate-y-0"
      leave-to-class="opacity-0 -translate-y-4"
    >
      <div v-if="isMobileMenuOpen" class="md:hidden bg-[#fff8f3] border-b border-terracotta-200 mt-2 rounded-2xl shadow-xl p-5 flex flex-col space-y-4 text-center">
        <a 
          v-for="link in navLinks" 
          :key="link.href" 
          :href="link.href"
          @click="isMobileMenuOpen = false"
          class="text-xs uppercase tracking-editorial font-medium text-charcoal-900 hover:text-terracotta-700 py-2 border-b border-terracotta-100/50"
        >
          {{ link.label }}
        </a>
        <a 
          href="#rsvp" 
          @click="isMobileMenuOpen = false"
          class="bg-terracotta-700 text-white text-xs uppercase tracking-widest font-semibold py-3 rounded-full shadow"
        >
          Confirmar Asistencia
        </a>
      </div>
    </transition>
  </header>
</template>

<script setup>
import { ref, onMounted, onUnmounted } from 'vue'
import { Volume2, VolumeX, Menu, X } from 'lucide-vue-next'

defineProps({
  isPlayingAudio: Boolean,
  isAudioLoaded: Boolean
})

defineEmits(['toggle-audio'])

const isScrolled = ref(false)
const isMobileMenuOpen = ref(false)

const navLinks = [
  { label: 'Ceremonia & Recepción', href: '#ceremonia' },
  { label: 'Dress Code', href: '#dresscode' },
  { label: 'Galería de Fotos', href: '#galeria' },
  { label: 'Recomendaciones', href: '#recomendaciones' },
  { label: 'Regalos', href: '#regalos' },
  { label: 'Música', href: '#musica' }
]


const handleScroll = () => {
  isScrolled.value = window.scrollY > 40
}

onMounted(() => {
  window.addEventListener('scroll', handleScroll)
})

onUnmounted(() => {
  window.removeEventListener('scroll', handleScroll)
})
</script>
