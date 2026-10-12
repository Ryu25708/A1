
import pygame

# เริ่มต้นใช้งาน Pygame
pygame.init()

# สร้างหน้าต่างขนาด 800 x 600
screen = pygame.display.set_mode((800, 600))
pygame.display.set_caption("My First Animation")

# ควบคุมความเร็วของ Animation
clock = pygame.time.Clock()

# กำหนดตำแหน่งเริ่มต้นของวงกลม
x = 400
y = 300

# กำหนดความเร็วในการเคลื่อนที่
speed = 5

# ควบคุมการทำงานของโปรแกรม
running = True

while running:

    # ตรวจสอบ Event ต่าง ๆ
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            running = False

    # ตรวจสอบการกดปุ่มคีย์บอร์ด
    keys = pygame.key.get_pressed()

    if keys[pygame.K_LEFT]:
        x -= speed

    if keys[pygame.K_RIGHT]:
        x += speed

    if keys[pygame.K_UP]:
        y -= speed

    if keys[pygame.K_DOWN]:
        y += speed

    # ล้างหน้าจอและกำหนดสีพื้นหลัง
    screen.fill((30, 30, 30))

    # วาดวงกลมตามตำแหน่งปัจจุบัน
    pygame.draw.circle(screen, (0, 200, 255), (x, y), 30)

    # อัปเดตหน้าจอ
    pygame.display.flip()

    # จำกัดความเร็วไว้ที่ 60 FPS
    clock.tick(60)

# ปิดการทำงานของ Pygame
pygame.quit()