<template>
  <section id="ceremonia" class="relative z-20 -mt-12 sm:-mt-16 py-20 sm:py-24 px-3 sm:px-6 bg-[#FFF8F3] rounded-t-[2.5rem] sm:rounded-t-[3.5rem] shadow-[0_-20px_50px_rgba(139,81,44,0.14)] border-t border-terracotta-100/80">
    <div class="w-full max-w-6xl mx-auto text-center">

      <!-- Section Decorative Header -->
      <div class="flex flex-col items-center mb-8 max-w-3xl mx-auto">
        <!-- Ring Icon -->
        <div class="w-16 h-16 rounded-full bg-cream-200 border border-terracotta-200 flex items-center justify-center mb-4 shadow-sm">
          <svg class="w-8 h-8 text-terracotta-700" viewBox="0 0 64 64" fill="none" xmlns="http://www.w3.org/2000/svg">
            <circle cx="26" cy="36" r="16" stroke="currentColor" stroke-width="2.5" stroke-linecap="round"/>
            <circle cx="38" cy="36" r="16" stroke="currentColor" stroke-width="2.5" stroke-linecap="round"/>
            <path d="M26 14L28.5 19H23.5L26 14Z" fill="currentColor"/>
            <circle cx="26" cy="12" r="2" fill="currentColor"/>
            <path d="M22 8L26 4L30 8" stroke="currentColor" stroke-width="1.5" stroke-linecap="round"/>
          </svg>
        </div>

        <span class="text-xs uppercase tracking-widest text-olive-600 font-semibold mb-1">Uniendo nuestras vidas</span>
        <h2 class="font-serif text-3xl sm:text-4xl md:text-5xl text-charcoal-900 font-normal">
          Ceremonia y Recepción
        </h2>
        <p class="font-serif italic text-xl text-terracotta-700 mt-2">Hacienda El Jardín Secreto</p>
      </div>

      <!-- Date and Time Card -->
      <div class="max-w-xl mx-auto bg-white/90 backdrop-blur border border-terracotta-200 rounded-2xl p-6 sm:p-8 shadow-paper my-8">
        <div class="flex items-center justify-center gap-8 text-charcoal-900">
          <div class="text-center">
            <span class="block font-serif text-2xl sm:text-3xl md:text-4xl font-normal text-terracotta-800">29 NOV</span>
            <span class="text-xs uppercase tracking-widest text-olive-700 font-medium">Domingo</span>
          </div>

          <div class="h-12 w-px bg-terracotta-200"></div>

          <div class="text-center">
            <span class="block font-serif text-2xl sm:text-3xl md:text-4xl font-normal text-terracotta-800">4:30 PM</span>
            <span class="text-xs uppercase tracking-widest text-olive-700 font-medium">Hora Puntual</span>
          </div>
        </div>

        <!-- Location Button -->
        <div class="mt-8">
          <button 
            @click="$emit('open-location')"
            class="inline-flex items-center gap-2 bg-[#D0C2B4] hover:bg-terracotta-700 text-charcoal-900 hover:text-white px-8 py-3 rounded-xl transition-all duration-300 font-medium text-xs uppercase tracking-widest shadow-sm hover:shadow-md transform hover:-translate-y-0.5"
          >
            <MapPin class="w-4 h-4" />
            <span>Ver Ubicación</span>
          </button>
        </div>
      </div>

      <!-- CHILDHOOD PHOTO CARD (childs.png) - Perfectly balanced size -->
      <div class="mt-10 w-full max-w-xl sm:max-w-2xl mx-auto">
        
        <!-- Photo Card Container -->
        <div class="relative w-full bg-white rounded-3xl p-3 sm:p-4 shadow-paper-lg border border-terracotta-200/80 group">
          
          <div class="relative overflow-hidden rounded-2xl bg-cream-50 w-full">
            <img 
              src="/images/ceremony/childs.png" 
              alt="Dilan y Mayra de pequeños" 
              class="w-full h-auto object-contain max-h-[500px] transform group-hover:scale-[1.01] transition-transform duration-700 block mx-auto"
            />
          </div>
        </div>

      </div>





    </div>
  </section>
</template>

<script setup>
import { MapPin, Heart } from 'lucide-vue-next'

defineEmits(['open-location'])
</script>
