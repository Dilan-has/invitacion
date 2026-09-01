<template>
  <section id="galeria" class="relative z-40 -mt-12 sm:-mt-16 py-20 sm:py-24 px-4 bg-[#FDF5F0] rounded-t-[2.5rem] sm:rounded-t-[3.5rem] shadow-[0_-20px_50px_rgba(164,90,65,0.14)] border-t border-terracotta-100/80 overflow-hidden">
    <div class="max-w-6xl mx-auto text-center w-full">

      <!-- Header -->
      <div class="mb-8">
        <span class="text-xs uppercase tracking-widest text-olive-600 font-semibold mb-2 block">Nuestros Momentos</span>
        <h2 class="font-serif text-3xl sm:text-4xl md:text-5xl text-charcoal-900 font-normal">
          Galería de Recuerdos
        </h2>
        <div class="w-16 h-0.5 bg-terracotta-400 mx-auto my-3"></div>
        <p class="font-serif italic text-base sm:text-lg text-terracotta-700 max-w-lg mx-auto">
          "Un recorrido por los instantes que nos trajeron hasta aquí."
        </p>
      </div>

      <!-- Interactive 3D Rotary Carousel -->
      <div 
        class="relative max-w-5xl mx-auto my-4 py-4 px-2 flex flex-col items-center"
        @mouseenter="isAutoPlaying = false"
        @mouseleave="isAutoPlaying = true"
      >
        <!-- Main Carousel Stage -->
        <div class="relative w-full h-[360px] sm:h-[460px] md:h-[500px] flex items-center justify-center [perspective:1000px] overflow-hidden">
          
          <div 
            v-for="(photo, index) in photos" 
            :key="photo.id"
            @click="index === activeIndex ? openLightbox(index) : goToSlide(index)"
            :style="getSlideStyle(index)"
            class="absolute top-1/2 transition-all duration-700 ease-out cursor-pointer group rounded-3xl bg-white p-2 sm:p-3 shadow-2xl border border-terracotta-200/80 max-w-xs sm:max-w-md md:max-w-lg w-[85%] sm:w-[70%]"
          >
            <div class="relative w-full h-[290px] sm:h-[370px] md:h-[410px] overflow-hidden rounded-2xl bg-cream-100">
              <img 
                :src="photo.src" 
                :alt="photo.caption" 
                class="w-full h-full object-cover object-center transform group-hover:scale-105 transition-transform duration-700"
              />

              <!-- Overlay caption on active slide -->
              <div 
                v-if="index === activeIndex" 
                class="absolute inset-0 bg-gradient-to-t from-black/80 via-black/20 to-transparent flex flex-col justify-end p-4 sm:p-6 text-white text-left transition-opacity duration-500"
              >
                <span class="text-[10px] uppercase tracking-widest font-semibold text-terracotta-300">
                  Foto {{ index + 1 }} de {{ photos.length }}
                </span>
                <p class="font-serif italic text-base sm:text-xl text-cream-100 font-normal leading-snug">
                  {{ photo.caption }}
                </p>
                <div class="mt-2 inline-flex items-center gap-1.5 text-xs text-terracotta-200 font-medium">
                  <Maximize2 class="w-3.5 h-3.5" />
                  <span>Ampliar imagen</span>
                </div>
              </div>

            </div>
          </div>

        </div>

        <!-- Carousel Navigation Controls -->
        <div class="flex items-center justify-center gap-6 mt-6">
          <button 
            @click="prevSlide"
            class="w-11 h-11 rounded-full bg-white/90 border border-terracotta-200 text-terracotta-800 shadow-md hover:bg-terracotta-700 hover:text-white transition-all flex items-center justify-center transform hover:scale-105 active:scale-95"
            aria-label="Foto anterior"
          >
            <ChevronLeft class="w-5 h-5" />
          </button>

          <!-- Dots Indicator -->
          <div class="flex items-center gap-2">
            <button 
              v-for="(photo, idx) in photos" 
              :key="'dot-' + photo.id"
              @click="goToSlide(idx)"
              :class="[
                'h-2.5 rounded-full transition-all duration-300',
                activeIndex === idx ? 'w-8 bg-terracotta-600' : 'w-2.5 bg-terracotta-200 hover:bg-terracotta-400'
              ]"
            ></button>
          </div>

          <button 
            @click="nextSlide"
            class="w-11 h-11 rounded-full bg-white/90 border border-terracotta-200 text-terracotta-800 shadow-md hover:bg-terracotta-700 hover:text-white transition-all flex items-center justify-center transform hover:scale-105 active:scale-95"
            aria-label="Siguiente foto"
          >
            <ChevronRight class="w-5 h-5" />
          </button>
        </div>

      </div>

      <!-- Lightbox Modal -->
      <teleport to="body">
        <transition
          enter-active-class="transition duration-300 ease-out"
          enter-from-class="opacity-0 scale-95"
          enter-to-class="opacity-100 scale-100"
          leave-active-class="transition duration-200 ease-in"
          leave-from-class="opacity-100 scale-100"
          leave-to-class="opacity-0 scale-95"
        >
          <div 
            v-if="lightboxOpen"
            class="fixed inset-0 z-50 bg-charcoal-900/95 backdrop-blur-md flex flex-col items-center justify-between p-4 sm:p-6"
            @click.self="closeLightbox"
          >
            <!-- Modal Header / Controls -->
            <div class="w-full max-w-6xl flex justify-between items-center text-white z-10">
              <span class="text-xs uppercase tracking-widest text-terracotta-200 font-medium">
                Dilan &amp; Mayra — {{ activeIndex + 1 }} / {{ photos.length }}
              </span>
              <button 
                @click="closeLightbox"
                class="p-2 rounded-full bg-white/10 hover:bg-white/20 text-white transition-colors focus:outline-none"
                aria-label="Cerrar galeria"
              >
                <X class="w-6 h-6" />
              </button>
            </div>

            <!-- Main Image Viewer -->
            <div class="relative w-full max-w-4xl flex-1 flex items-center justify-center my-4">
              <button 
                @click="prevSlide"
                class="absolute left-2 sm:left-4 z-20 p-3 rounded-full bg-black/40 hover:bg-black/70 text-white transition-all transform hover:scale-110 focus:outline-none"
                aria-label="Anterior"
              >
                <ChevronLeft class="w-6 h-6" />
              </button>

              <div class="max-h-[75vh] max-w-full overflow-hidden rounded-2xl shadow-2xl border border-white/10 flex flex-col items-center bg-black/30">
                <img 
                  :src="photos[activeIndex].src" 
                  :alt="photos[activeIndex].caption"
                  class="max-h-[70vh] w-auto object-contain rounded-t-2xl"
                />
                <div class="w-full bg-charcoal-900/90 py-3 px-6 text-center text-cream-100 border-t border-white/10">
                  <p class="font-serif italic text-base sm:text-lg">{{ photos[activeIndex].caption }}</p>
                </div>
              </div>

              <button 
                @click="nextSlide"
                class="absolute right-2 sm:right-4 z-20 p-3 rounded-full bg-black/40 hover:bg-black/70 text-white transition-all transform hover:scale-110 focus:outline-none"
                aria-label="Siguiente"
              >
                <ChevronRight class="w-6 h-6" />
              </button>
            </div>

            <!-- Thumbnails Strip -->
            <div class="w-full max-w-2xl flex justify-center gap-2 overflow-x-auto py-2">
              <button 
                v-for="(photo, idx) in photos" 
                :key="photo.id"
                @click="activeIndex = idx"
                :class="[
                  'w-12 h-12 rounded-lg overflow-hidden border-2 transition-all shrink-0',
                  activeIndex === idx ? 'border-terracotta-400 scale-110' : 'border-transparent opacity-50 hover:opacity-100'
                ]"
              >
                <img :src="photo.src" class="w-full h-full object-cover" />
              </button>
            </div>

          </div>
        </transition>
      </teleport>

    </div>
  </section>
</template>

<script setup>
import { ref, onMounted, onUnmounted } from 'vue'
import { Maximize2, X, ChevronLeft, ChevronRight } from 'lucide-vue-next'

// Reordered photos so the hero photo (PXL_20251120_215244680_2_Original.JPG) is last
const photos = [
  { id: 2, src: '/images/gallery_web/IMG_0846.jpg' },
  { id: 3, src: '/images/gallery_web/3-5.jpeg' },
  { id: 4, src: '/images/gallery_web/IMG_1133.jpg' },
  { id: 5, src: '/images/gallery_web/IMG_1547.jpg' },
  { id: 6, src: '/images/gallery_web/IMG_3069_Original.jpg' },
  { id: 7, src: '/images/gallery_web/PXL_20251120_215244680_2_Original.JPG' }
]

const activeIndex = ref(0)
const lightboxOpen = ref(false)
const isAutoPlaying = ref(true)
let autoPlayInterval = null

const nextSlide = () => {
  activeIndex.value = (activeIndex.value + 1) % photos.length
}

const prevSlide = () => {
  activeIndex.value = (activeIndex.value - 1 + photos.length) % photos.length
}

const goToSlide = (index) => {
  activeIndex.value = index
}

const openLightbox = (index) => {
  activeIndex.value = index
  lightboxOpen.value = true
  document.body.style.overflow = 'hidden'
}

const closeLightbox = () => {
  lightboxOpen.value = false
  document.body.style.overflow = ''
}

const getSlideStyle = (index) => {
  const total = photos.length
  let offset = (index - activeIndex.value + total) % total
  if (offset > total / 2) offset -= total

  const absOffset = Math.abs(offset)
  
  if (absOffset > 2) {
    return {
      opacity: 0,
      transform: 'translate(-50%, -50%) scale(0.5)',
      pointerEvents: 'none',
      zIndex: 0,
      left: '50%'
    }
  }

  const translateX = offset * 42 // 42% offset for adjacent slides
  const scale = 1 - absOffset * 0.14
  const opacity = 1 - absOffset * 0.35
  const zIndex = 30 - absOffset * 10
  const rotateY = offset * -10

  return {
    left: `calc(50% + ${translateX}%)`,
    transform: `translate(-50%, -50%) scale(${scale}) rotateY(${rotateY}deg)`,
    opacity: opacity,
    zIndex: zIndex,
    pointerEvents: absOffset > 1 ? 'none' : 'auto'
  }
}

const handleKeydown = (e) => {
  if (lightboxOpen.value) {
    if (e.key === 'Escape') closeLightbox()
    if (e.key === 'ArrowRight') nextSlide()
    if (e.key === 'ArrowLeft') prevSlide()
  } else {
    if (e.key === 'ArrowRight') nextSlide()
    if (e.key === 'ArrowLeft') prevSlide()
  }
}

onMounted(() => {
  window.addEventListener('keydown', handleKeydown)
  autoPlayInterval = setInterval(() => {
    if (isAutoPlaying.value && !lightboxOpen.value) {
      nextSlide()
    }
  }, 4000)
})

onUnmounted(() => {
  window.removeEventListener('keydown', handleKeydown)
  if (autoPlayInterval) clearInterval(autoPlayInterval)
})
</script>
