<template>
  <section id="dresscode" class="relative z-30 -mt-12 sm:-mt-16 py-20 sm:py-24 px-4 bg-[#F4F6F1] rounded-t-[2.5rem] sm:rounded-t-[3.5rem] shadow-[0_-20px_50px_rgba(101,116,90,0.14)] border-t border-olive-200/80">
    <div class="max-w-4xl mx-auto text-center w-full">

      <!-- Header -->
      <div class="mb-12">
        <span class="text-xs uppercase tracking-widest text-olive-600 font-semibold mb-2 block">Etiqueta &amp; Estilo</span>
        <h2 class="font-serif text-3xl sm:text-4xl md:text-5xl text-charcoal-900 font-normal">
          Código de Vestimenta
        </h2>
        <p class="font-serif italic text-2xl text-terracotta-700 mt-2 font-medium">Formal</p>
        <p class="max-w-xl mx-auto text-sm text-charcoal-800 mt-4 leading-relaxed">
          Nos encantaría contar con tu presencia vistiendo de forma elegante y formal. Agradecemos amablemente tener en cuenta la lista de colores reservados.
        </p>
      </div>

      <!-- RESERVED COLORS CIRCLES (No hex texts, no fabric swatches) -->
      <div class="my-10 max-w-4xl mx-auto bg-white/90 backdrop-blur rounded-3xl p-6 sm:p-10 border border-terracotta-200/80 shadow-paper">
        
        <div class="inline-flex items-center gap-2 px-4 py-1.5 rounded-full bg-terracotta-100/70 border border-terracotta-200 text-terracotta-800 text-xs font-semibold uppercase tracking-wider mb-3">
          <Ban class="w-4 h-4 text-terracotta-700" />
          <span>Colores Reservados</span>
        </div>

        <p class="text-xs text-charcoal-800 mb-8 max-w-md mx-auto leading-relaxed">
          Por favor evita el uso de los siguientes colores en tu vestuario, ya que están reservados exclusivamente para la pareja y el cortejo:
        </p>

        <!-- 8 Reserved Color Circles Grid (Clean circles, no hex text) -->
        <div class="grid grid-cols-2 sm:grid-cols-4 gap-6 sm:gap-8 justify-items-center">
          
          <!-- Color 1: Blanco -->
          <div class="group flex flex-col items-center transform hover:-translate-y-1.5 transition-all duration-300">
            <div class="relative w-20 h-20 sm:w-22 sm:h-22 rounded-full p-1 border-2 border-gray-300 group-hover:border-terracotta-400 shadow-md transition-all duration-300">
              <div class="w-full h-full rounded-full bg-white border border-gray-200 shadow-inner"></div>
            </div>
            <span class="mt-3 font-serif text-sm font-semibold text-charcoal-900">Blanco</span>
          </div>

          <!-- Color 2: Verde Salvia -->
          <div class="group flex flex-col items-center transform hover:-translate-y-1.5 transition-all duration-300">
            <div class="relative w-20 h-20 sm:w-22 sm:h-22 rounded-full p-1 border-2 border-olive-200 group-hover:border-olive-500 shadow-md transition-all duration-300">
              <div class="w-full h-full rounded-full bg-[#9CAF88] shadow-inner"></div>
            </div>
            <span class="mt-3 font-serif text-sm font-semibold text-charcoal-900">Verde Salvia</span>
          </div>

          <!-- Color 3: Verde Oliva -->
          <div class="group flex flex-col items-center transform hover:-translate-y-1.5 transition-all duration-300">
            <div class="relative w-20 h-20 sm:w-22 sm:h-22 rounded-full p-1 border-2 border-olive-300 group-hover:border-olive-700 shadow-md transition-all duration-300">
              <div class="w-full h-full rounded-full bg-[#4E5936] shadow-inner"></div>
            </div>
            <span class="mt-3 font-serif text-sm font-semibold text-charcoal-900">Verde Oliva</span>
          </div>

          <!-- Color 4: Burgundy Wine -->
          <div class="group flex flex-col items-center transform hover:-translate-y-1.5 transition-all duration-300">
            <div class="relative w-20 h-20 sm:w-22 sm:h-22 rounded-full p-1 border-2 border-rose-300 group-hover:border-rose-600 shadow-md transition-all duration-300">
              <div class="w-full h-full rounded-full bg-[#562C1E] shadow-inner"></div>
            </div>
            <span class="mt-3 font-serif text-sm font-semibold text-charcoal-900">Burgundy Wine</span>
          </div>

          <!-- Color 5: Vinitinto -->
          <div class="group flex flex-col items-center transform hover:-translate-y-1.5 transition-all duration-300">
            <div class="relative w-20 h-20 sm:w-22 sm:h-22 rounded-full p-1 border-2 border-terracotta-300 group-hover:border-terracotta-600 shadow-md transition-all duration-300">
              <div class="w-full h-full rounded-full bg-[#592E3A] shadow-inner"></div>
            </div>
            <span class="mt-3 font-serif text-sm font-semibold text-charcoal-900">Vinitinto</span>
          </div>

          <!-- Color 6: Mustard Yellow -->
          <div class="group flex flex-col items-center transform hover:-translate-y-1.5 transition-all duration-300">
            <div class="relative w-20 h-20 sm:w-22 sm:h-22 rounded-full p-1 border-2 border-amber-300 group-hover:border-amber-600 shadow-md transition-all duration-300">
              <div class="w-full h-full rounded-full bg-[#BF8034] shadow-inner"></div>
            </div>
            <span class="mt-3 font-serif text-sm font-semibold text-charcoal-900">Mustard Yellow</span>
          </div>

          <!-- Color 7: Caramel Wind -->
          <div class="group flex flex-col items-center transform hover:-translate-y-1.5 transition-all duration-300">
            <div class="relative w-20 h-20 sm:w-22 sm:h-22 rounded-full p-1 border-2 border-amber-400 group-hover:border-amber-700 shadow-md transition-all duration-300">
              <div class="w-full h-full rounded-full bg-[#8C512E] shadow-inner"></div>
            </div>
            <span class="mt-3 font-serif text-sm font-semibold text-charcoal-900">Caramel Wind</span>
          </div>

          <!-- Color 8: Beige -->
          <div class="group flex flex-col items-center transform hover:-translate-y-1.5 transition-all duration-300">
            <div class="relative w-20 h-20 sm:w-22 sm:h-22 rounded-full p-1 border-2 border-stone-300 group-hover:border-stone-500 shadow-md transition-all duration-300">
              <div class="w-full h-full rounded-full bg-[#AFA082] shadow-inner"></div>
            </div>
            <span class="mt-3 font-serif text-sm font-semibold text-charcoal-900">Beige</span>
          </div>

        </div>

      </div>


      <!-- Recommendations for Men & Women -->
      <div class="grid grid-cols-1 md:grid-cols-2 gap-6 max-w-3xl mx-auto text-left">
        
        <!-- Mujeres -->
        <div class="bg-white rounded-2xl p-6 border border-terracotta-100 shadow-sm flex gap-4 items-start">
          <div class="w-10 h-10 rounded-full bg-terracotta-100 flex items-center justify-center shrink-0 text-terracotta-700">
            <Sparkles class="w-5 h-5" />
          </div>
          <div>
            <h3 class="font-serif text-lg text-charcoal-900 font-semibold mb-1">Mujeres</h3>
            <p class="text-xs text-charcoal-800 leading-relaxed">
              Vestido largo o midi en código formal (evitando los colores reservados mencionados arriba).
            </p>
          </div>
        </div>

        <!-- Hombres -->
        <div class="bg-white rounded-2xl p-6 border border-terracotta-100 shadow-sm flex gap-4 items-start">
          <div class="w-10 h-10 rounded-full bg-olive-100 flex items-center justify-center shrink-0 text-olive-700">
            <UserCheck class="w-5 h-5" />
          </div>
          <div>
            <h3 class="font-serif text-lg text-charcoal-900 font-semibold mb-1">Hombres</h3>
            <p class="text-xs text-charcoal-800 leading-relaxed">
              Traje formal o smoking (evitando los colores reservados mencionados arriba).
            </p>
          </div>
        </div>

      </div>

      <!-- Reserved Color Notice -->
      <div class="mt-8 max-w-xl mx-auto bg-cream-200/70 rounded-full px-6 py-3 border border-terracotta-200 inline-flex items-center justify-center gap-2 text-xs text-terracotta-900 font-medium">
        <HeartHandshake class="w-4 h-4 text-terracotta-600 shrink-0" />
        <span>Agradecemos amablemente respetar los colores reservados para este día tan especial 🤍</span>
      </div>

    </div>
  </section>
</template>

<script setup>
import { Sparkles, UserCheck, HeartHandshake, Ban } from 'lucide-vue-next'
</script>

