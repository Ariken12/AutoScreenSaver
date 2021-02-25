from PIL import Image, ImageGrab
import time

PATH = 'C:\\YandexDisk\\0001'
JPEG = 'JPEG'

def screenshot(path, type_of_picture):
    image = ImageGrab.grab()
    image.save(path, type_of_picture)

def get_minute():
    return time.localtime(time.time()).tm_min

def main():
    while True:
        if get_minute() == 0 or get_minute() == 30:
            screenshot(PATH, JPEG)

if __name__ == "__main__":
    main()
