'''
user=topass
time=2019-10-22 18
introduction:this is bullet
'''
import pygame


class Bullet(pygame.sprite.Sprite):
    # 接收形参传进来的位置信息来处理
    def __init__(self, position):
        super(Bullet, self).__init__()
        self.image = pygame.image.load("material/image/bullet1.png")
        # get_rect()处理矩形的函数，返回一个居中的值
        self.rect = self.image.get_rect()
        self.rect.left, self.rect.top = position
        self.speed = 30
        self.active = True
        # 击中飞机的范围
        self.mask = pygame.mask.from_surface(self.image)

    def move(self):
        """
        子弹移动, 超出屏幕范围, 则设置死亡
        """
        if self.rect.top < 0:
            self.active = False
        else:
            self.rect.top -= self.speed

    def reset(self, position):
        """
        复位函数
        """
        self.rect.left, self.rect.top = position
        self.active = True


