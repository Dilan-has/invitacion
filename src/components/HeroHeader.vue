<template>
  <section id="hero" class="relative z-10 pt-24 pb-20 px-4 overflow-hidden bg-[#FAF4EE]">
    <!-- Background Botanical/Paper Decorative Accents -->
    <div class="absolute inset-0 pointer-events-none opacity-40">
      <div class="absolute -top-24 -left-24 w-96 h-96 bg-terracotta-200/30 rounded-full blur-3xl"></div>
      <div class="absolute -bottom-24 -right-24 w-96 h-96 bg-olive-200/30 rounded-full blur-3xl"></div>
      <div class="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 w-[600px] h-[600px] bg-cream-200/50 rounded-full blur-3xl"></div>
    </div>

    <!-- Main Container -->
    <div class="relative z-10 max-w-4xl mx-auto text-center flex flex-col items-center">
      
      <!-- Subtitle Badge -->
      <div class="inline-flex items-center gap-3 px-4 py-1.5 rounded-full bg-cream-100/90 border border-terracotta-200 shadow-sm mb-6 animate-pulse-subtle">
        <span class="w-1.5 h-1.5 rounded-full bg-terracotta-600"></span>
        <span class="text-xs uppercase tracking-widest text-terracotta-800 font-medium">¡Nos Casamos!</span>
        <span class="w-1.5 h-1.5 rounded-full bg-terracotta-600"></span>
      </div>

      <!-- Couple Names -->
      <h1 class="font-serif text-5xl sm:text-6xl md:text-7xl lg:text-8xl text-charcoal-900 font-normal leading-tight tracking-tight mb-4">
        Dilan <span class="font-serif italic text-terracotta-700 text-4xl sm:text-5xl md:text-6xl font-light px-1">&amp;</span> Mayra
      </h1>

      <div class="w-24 h-0.5 bg-gradient-to-r from-transparent via-terracotta-400 to-transparent my-4"></div>

      <!-- Date Banner -->
      <p class="text-base sm:text-lg md:text-xl font-serif text-charcoal-800 tracking-wide mb-1">
        29 DE NOVIEMBRE DE 2026
      </p>
      <p class="text-xs sm:text-sm uppercase tracking-editorial text-olive-600 font-medium mb-6">
        Jardín Secreto — 4:30 PM
      </p>

      <!-- Emotional Welcome Quote BEFORE Image -->
      <div class="max-w-xl mx-auto mb-8 px-5 py-4 rounded-2xl bg-white/60 backdrop-blur-xs border border-terracotta-200/60 shadow-sm">
        <p class="font-serif italic text-base sm:text-lg text-terracotta-800 leading-relaxed">
          “Hay días que uno espera durante mucho tiempo. Y luego están los que quisiera repetir para siempre. ✨ Nuestro día está por llegar y nos haría muy felices vivirlo contigo.”
        </p>
      </div>

      <!-- Hero Photo Card / Feature Image with Animated Bible Verse Overlay -->

      <div class="relative w-full max-w-md mx-auto mb-10 p-3 bg-white rounded-2xl shadow-paper border border-terracotta-100 transform hover:scale-[1.01] transition-transform duration-500">
        <div class="relative overflow-hidden rounded-xl aspect-[4/5]">
          <img 
            :src="'/images/gallery_web/PXL_20251120_215244680_2_Original.JPG'" 
            alt="Dilan y Mayra" 
            class="w-full h-full object-cover object-center transform hover:scale-105 transition-transform duration-700"
          />
          <!-- Typewriter Verse Overlay with individual light transparent paragraph capsules -->
          <div class="absolute inset-0 bg-gradient-to-t from-black/60 via-transparent to-transparent flex flex-col justify-end items-center p-4 sm:p-5 text-center pointer-events-none">
            
            <!-- Paragraph 1: Quote Capsule (High transparency, image fully visible underneath) -->
            <div class="bg-black/25 backdrop-blur-xs rounded-xl px-4 py-2.5 border border-white/15 shadow-md mb-2 max-w-[95%]">
              <p class="font-serif italic text-xs sm:text-sm text-cream-100 font-normal leading-relaxed drop-shadow">
                {{ typedQuote }}<span v-if="isTypingQuote" class="inline-block w-0.5 h-3.5 bg-terracotta-300 ml-0.5 animate-pulse">|</span>
              </p>
            </div>

            <!-- Paragraph 2: Citation Capsule -->
            <div v-if="typedCitation || isTypingCitation" class="bg-black/30 backdrop-blur-xs rounded-full px-3 py-1 border border-white/15 shadow-sm">
              <p class="font-serif italic text-[11px] sm:text-xs text-cream-200 tracking-wider font-light">
                {{ typedCitation }}<span v-if="isTypingCitation" class="inline-block w-0.5 h-3 bg-terracotta-300 ml-0.5 animate-pulse">|</span>
              </p>
            </div>

          </div>
        </div>
      </div>


      <!-- Live Countdown Timer -->
      <div class="w-full max-w-2xl bg-white/80 backdrop-blur-md rounded-2xl p-6 sm:p-8 border border-terracotta-200/70 shadow-paper">
        <p class="text-xs uppercase tracking-widest text-terracotta-800 font-medium mb-4">
          Faltan solo
        </p>

        <div class="grid grid-cols-4 gap-2 sm:gap-4 text-center">
          <div class="flex flex-col items-center p-2 sm:p-3 bg-cream-100/70 rounded-xl border border-terracotta-100">
            <span class="font-serif text-2xl sm:text-4xl md:text-5xl font-bold text-terracotta-800">{{ countdown.days }}</span>
            <span class="text-[10px] sm:text-xs uppercase tracking-wider text-charcoal-800 mt-1 font-medium">Días</span>
          </div>
          <div class="flex flex-col items-center p-2 sm:p-3 bg-cream-100/70 rounded-xl border border-terracotta-100">
            <span class="font-serif text-2xl sm:text-4xl md:text-5xl font-bold text-terracotta-800">{{ countdown.hours }}</span>
            <span class="text-[10px] sm:text-xs uppercase tracking-wider text-charcoal-800 mt-1 font-medium">Horas</span>
          </div>
          <div class="flex flex-col items-center p-2 sm:p-3 bg-cream-100/70 rounded-xl border border-terracotta-100">
            <span class="font-serif text-2xl sm:text-4xl md:text-5xl font-bold text-terracotta-800">{{ countdown.minutes }}</span>
            <span class="text-[10px] sm:text-xs uppercase tracking-wider text-charcoal-800 mt-1 font-medium">Minutos</span>
          </div>
          <div class="flex flex-col items-center p-2 sm:p-3 bg-cream-100/70 rounded-xl border border-terracotta-100">
            <span class="font-serif text-2xl sm:text-4xl md:text-5xl font-bold text-terracotta-800">{{ countdown.seconds }}</span>
            <span class="text-[10px] sm:text-xs uppercase tracking-wider text-charcoal-800 mt-1 font-medium">Segundos</span>
          </div>
        </div>
      </div>

      <!-- Scroll Indicator -->
      <a href="#ceremonia" class="mt-12 group flex flex-col items-center gap-2 text-terracotta-700 hover:text-terracotta-900 transition-colors">
        <span class="text-[10px] uppercase tracking-widest font-medium">Desliza para ver más</span>
        <ChevronDown class="w-5 h-5 animate-float" />
      </a>

    </div>
  </section>
</template>

<script setup>
import { ref, onMounted, onUnmounted } from 'vue'
import { ChevronDown } from 'lucide-vue-next'

const targetDate = new Date('2026-11-29T16:30:00')

const countdown = ref({
  days: '00',
  hours: '00',
  minutes: '00',
  seconds: '00'
})

let timerInterval = null

// Typewriter state for Bible verse (Split into Quote and Citation)
const quoteText = '“Ponme como sello sobre tu corazón, como una marca sobre tu brazo; Porque fuerte como la muerte es el amor”'
const citationText = 'Cantares 8:6'

const typedQuote = ref('')
const typedCitation = ref('')
const isTypingQuote = ref(true)
const isTypingCitation = ref(false)
let typeTimeout = null

const startTypewriter = () => {
  let index1 = 0
  let index2 = 0
  typedQuote.value = ''
  typedCitation.value = ''
  isTypingQuote.value = true
  isTypingCitation.value = false

  const typeQuote = () => {
    if (index1 < quoteText.length) {
      typedQuote.value += quoteText.charAt(index1)
      index1++
      typeTimeout = setTimeout(typeQuote, Math.random() * 20 + 30)
    } else {
      isTypingQuote.value = false
      isTypingCitation.value = true
      typeTimeout = setTimeout(typeCitation, 200)
    }
  }

  const typeCitation = () => {
    if (index2 < citationText.length) {
      typedCitation.value += citationText.charAt(index2)
      index2++
      typeTimeout = setTimeout(typeCitation, Math.random() * 25 + 40)
    } else {
      isTypingCitation.value = false
    }
  }

  typeQuote()
}

const updateCountdown = () => {
  const now = new Date()
  const diff = targetDate - now

  if (diff <= 0) {
    countdown.value = { days: '00', hours: '00', minutes: '00', seconds: '00' }
    return
  }

  const days = Math.floor(diff / (1000 * 60 * 60 * 24))
  const hours = Math.floor((diff / (1000 * 60 * 60)) % 24)
  const minutes = Math.floor((diff / (1000 * 60)) % 60)
  const seconds = Math.floor((diff / 1000) % 60)

  countdown.value = {
    days: String(days).padStart(2, '0'),
    hours: String(hours).padStart(2, '0'),
    minutes: String(minutes).padStart(2, '0'),
    seconds: String(seconds).padStart(2, '0')
  }
}

onMounted(() => {
  updateCountdown()
  timerInterval = setInterval(updateCountdown, 1000)
  startTypewriter()
})

onUnmounted(() => {
  if (timerInterval) clearInterval(timerInterval)
  if (typeTimeout) clearTimeout(typeTimeout)
})
</script>



