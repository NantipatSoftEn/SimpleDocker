# SimpleDocker

## Command

- FROM : อ้างอิงถึง parent image

- WOKDIR:  กำหนด working directory ชื่อ work ใน ./

- COPY : copy ไฟล์ package.json จาก current dir เข้าไปใน work

- RUN : สั่ง execute คำสั่ง npm install ข้างใน Container

- CMD: ระบุคำสั่งที่จะรันภายในคอนเทนเนอร์
