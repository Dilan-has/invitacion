<template>
  <div class="min-h-screen bg-[#fff8f3] text-charcoal-900 font-sans relative selection:bg-terracotta-200 selection:text-terracotta-900">
    
    <!-- Floating Navigation Bar -->
    <Navbar 
      :isPlayingAudio="isPlayingAudio"
      :isAudioLoaded="isAudioLoaded"
      @toggle-audio="toggleAudio"
    />

    <main>
      <!-- Hero Header Section -->
      <HeroHeader />

      <!-- Ceremony & Reception Section (With requested image replacement) -->
      <CeremonySection 
        @open-location="isLocationModalOpen = true"
      />

      <!-- Dress Code Section (With requested color circles) -->
      <DressCodeSection />

      <!-- Photo Gallery Section (With enhanced gallery design) -->
      <PhotoGallery />

      <!-- Itinerary Timeline Section -->
      <ItinerarySection />

      <!-- Gift Registry Section -->
      <GiftRegistrySection />

      <!-- Music Suggestions Section -->
      <MusicSuggestionsSection />

      <!-- RSVP Attendance Form Section -->
      <RsvpSection />
    </main>

    <!-- Footer Section -->
    <FooterSection />

    <!-- Location Modal -->
    <LocationModal 
      :isOpen="isLocationModalOpen"
      @close="isLocationModalOpen = false"
    />

  </div>
</template>

<script setup>
import { ref, onMounted, onUnmounted } from 'vue'
import Navbar from './components/Navbar.vue'
import HeroHeader from './components/HeroHeader.vue'
import CeremonySection from './components/CeremonySection.vue'
import DressCodeSection from './components/DressCodeSection.vue'
import PhotoGallery from './components/PhotoGallery.vue'
import ItinerarySection from './components/ItinerarySection.vue'
import GiftRegistrySection from './components/GiftRegistrySection.vue'
import MusicSuggestionsSection from './components/MusicSuggestionsSection.vue'
import RsvpSection from './components/RsvpSection.vue'
import LocationModal from './components/LocationModal.vue'
import FooterSection from './components/FooterSection.vue'

const isLocationModalOpen = ref(false)
const isPlayingAudio = ref(false)
const isAudioLoaded = ref(true)

let audioCtx = null
let isSynthPlaying = false
let synthInterval = null

// Romantic Acoustic Web Audio Synthesizer Loop (Soft romantic piano chords)
const startSynthMusic = () => {
  try {
    if (!audioCtx) {
      audioCtx = new (window.AudioContext || window.webkitAudioContext)()
    }
    if (audioCtx.state === 'suspended') {
      audioCtx.resume()
    }

    isSynthPlaying = true
    isPlayingAudio.value = true

    // Chord sequence: Cmaj7 -> Am7 -> Fmaj7 -> G7
    const chords = [
      [261.63, 329.63, 392.00, 493.88], // Cmaj7
      [220.00, 261.63, 329.63, 392.00], // Am7
      [174.61, 220.00, 261.63, 329.63], // Fmaj7
      [196.00, 246.94, 293.66, 349.23]  // G7
    ]

    let chordIdx = 0

    const playChord = () => {
      if (!isSynthPlaying || !audioCtx) return
      const now = audioCtx.currentTime
      const currentChord = chords[chordIdx]

      currentChord.forEach((freq, i) => {
        const osc = audioCtx.createOscillator()
        const gain = audioCtx.createGain()

        osc.type = i % 2 === 0 ? 'sine' : 'triangle'
        osc.frequency.setValueAtTime(freq, now + i * 0.15)

        gain.gain.setValueAtTime(0.001, now + i * 0.15)
        gain.gain.linearRampToValueAtTime(0.04, now + i * 0.15 + 0.4)
        gain.gain.exponentialRampToValueAtTime(0.0001, now + i * 0.15 + 3.2)

        osc.connect(gain)
        gain.connect(audioCtx.destination)

        osc.start(now + i * 0.15)
        osc.stop(now + i * 0.15 + 3.5)
      })

      chordIdx = (chordIdx + 1) % chords.length
    }

    playChord()
    synthInterval = setInterval(playChord, 3500)
  } catch (e) {
    console.warn('Audio play exception:', e)
  }
}

const stopSynthMusic = () => {
  isSynthPlaying = false
  isPlayingAudio.value = false
  if (synthInterval) clearInterval(synthInterval)
}

const toggleAudio = () => {
  if (isPlayingAudio.value) {
    stopSynthMusic()
  } else {
    startSynthMusic()
  }
}

onUnmounted(() => {
  stopSynthMusic()
  if (audioCtx) audioCtx.close()
})
</script>
