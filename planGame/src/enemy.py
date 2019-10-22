'''
user=topass
time=2019-10-22 18
introduction:this is enemy
'''

from random import randint

import pygame


class SmallEnemy(pygame.sprite.Sprite):
    """
    定义小飞机敌人
    """
    energy = 1

    def __init__(self, bg_size):
        super(SmallEnemy, self).__init__()
        self.image = pygame.image.load("material/image/enemy1.png")
        # 得到一个居中的值，相对于飞机的图片而言
        self.rect = self.image.get_rect()
        self.width, self.height = bg_size[0], bg_size[1]
        self.mask = pygame.mask.from_surface(self.image)  # 获取飞机图像的掩膜用以更加精确的碰撞检测
        self.speed = 2
        self.energy = SmallEnemy.energy
        # 定义敌机出现的位置, 保证敌机不会在程序已开始就立即出现
        # 设定子弹出现的方式和范围，解释：
        # 横向空出一个飞机大小的空间，纵向向下运动为负向，设置起点为-5刚可见，设置为-5的倍数是为了消失
        self.rect.left, self.rect.top = (
            randint(0, self.width - self.rect.width),  randint(-5 * self.rect.height, -5),
        )
        self.active = True
        # 加载飞机损毁图片
        self.destroy_images = []
        self.destroy_images.extend(
            [
                pygame.image.load("material/image/enemy1_down1.png"),
                pygame.image.load("material/image/enemy1_down2.png"),
                pygame.image.load("material/image/enemy1_down3.png"),
                pygame.image.load("material/image/enemy1_down4.png")
            ]
        )

    def move(self):
        """
        定义敌机的移动函数
        """
        if self.rect.top < self.height:
            self.rect.top += self.speed
        else:
            self.reset()

    def reset(self):
        """
        当敌机向下移动出屏幕且飞机是需要进行随机出现的, 以及敌机死亡
        """
        self.rect.left, self.rect.top = (randint(0, self.width - self.rect.width), randint(-5 * self.rect.height, 0))
        self.active = True



class MidEnemy(pygame.sprite.Sprite):

    def __init__(self):
        super(MidEnemy, self).__init__()
        self.image = pygame.image.load("material/image/enemy2.png")


class BigEnemy(pygame.sprite.Sprite):

    def __init__(self):
        super(BigEnemy, self).__init__()
        self.image = pygame.image.load("material/image/enemy3.png")





