package com.example.uygulamam

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import android.widget.TextView
import android.widget.Toast
import com.example.uygulamam.databinding.ActivityMainBinding

class MainActivity : AppCompatActivity() {
    
    private lateinit var binding: ActivityMainBinding
    private var clickCount = 0
    
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityMainBinding.inflate(layoutInflater)
        setContentView(binding.root)
        
        setupUI()
    }
    
    private fun setupUI() {
        binding.welcomeText.text = "Merhaba! Uygulamama Hoş Geldiniz"
        
        binding.clickButton.setOnClickListener {
            clickCount++
            binding.clickCountText.text = "Butona $clickCount kez tıkladınız"
            
            if (clickCount % 5 == 0) {
                Toast.makeText(this, "Tebrikler! $clickCount kez tıkladınız!", Toast.LENGTH_SHORT).show()
            }
        }
        
        binding.resetButton.setOnClickListener {
            clickCount = 0
            binding.clickCountText.text = "Sayaç sıfırlandı"
            Toast.makeText(this, "Sayaç sıfırlandı", Toast.LENGTH_SHORT).show()
        }
    }
}