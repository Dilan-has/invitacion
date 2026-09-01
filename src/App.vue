<template>
  <div class="min-h-screen bg-[#fff8f3] text-charcoal-900 font-sans relative selection:bg-terracotta-200 selection:text-terracotta-900">
    
    <!-- Initial Paper Envelope Opening Overlay -->
    <WelcomeOverlay @open="playMusic" />

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
import WelcomeOverlay from './components/WelcomeOverlay.vue'
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

let bgAudio = null

const initAudio = () => {
  if (!bgAudio) {
    bgAudio = new Audio('/images/music/song.mp3')
    bgAudio.loop = true
    bgAudio.volume = 0.6
  }
}

const playMusic = () => {
  initAudio()
  if (bgAudio) {
    bgAudio.play().then(() => {
      isPlayingAudio.value = true
    }).catch(err => {
      console.warn('Autoplay prevented by browser policy, waiting for user gesture:', err)
      isPlayingAudio.value = false
    })
  }
}

const toggleAudio = () => {
  initAudio()
  if (isPlayingAudio.value) {
    bgAudio.pause()
    isPlayingAudio.value = false
  } else {
    playMusic()
  }
}

const handleUserGesture = () => {
  if (!isPlayingAudio.value) {
    playMusic()
  }
  removeGestureListeners()
}

const addGestureListeners = () => {
  window.addEventListener('click', handleUserGesture, { once: true })
  window.addEventListener('touchstart', handleUserGesture, { once: true })
  window.addEventListener('scroll', handleUserGesture, { once: true })
  window.addEventListener('keydown', handleUserGesture, { once: true })
}

const removeGestureListeners = () => {
  window.removeEventListener('click', handleUserGesture)
  window.removeEventListener('touchstart', handleUserGesture)
  window.removeEventListener('scroll', handleUserGesture)
  window.removeEventListener('keydown', handleUserGesture)
}

onMounted(() => {
  initAudio()
  // 1. Attempt immediate autoplay on page load
  playMusic()

  // 2. Fallback: enable on first touch, click, scroll or keypress if browser blocked immediate autoplay
  addGestureListeners()
})

onUnmounted(() => {
  removeGestureListeners()
  if (bgAudio) {
    bgAudio.pause()
    bgAudio = null
  }
})
</script>


