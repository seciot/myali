.class public Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;
.super Landroid/widget/RelativeLayout;
.source "SoundButtonActivity.java"


# static fields
.field static TAG:Ljava/lang/String;


# instance fields
.field private a:Ljava/util/Timer;

.field private b:I

.field public button_background_image:Lcom/alipay/mobile/commonui/widget/APImageView;

.field private c:Landroid/os/Handler;

.field canvasSector:Lcom/alipay/mobile/onsitepay/payer/sound/af;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/RectF;

.field private f:Landroid/view/LayoutInflater;

.field private g:I

.field imageView:[Landroid/widget/ImageView;

.field isWaveNow:Z

.field public loopNum:F

.field task:Ljava/util/TimerTask;

.field public timeOut:Z

.field waveButtonListener:Lcom/alipay/mobile/onsitepay/payer/sound/ag;

.field public wave_Layout:Landroid/widget/RelativeLayout;

.field public wave_circle_image_Layout:Landroid/widget/RelativeLayout;

.field public wave_image:Lcom/alipay/mobile/commonui/widget/APImageView;

.field public wave_image_init_Layout:Landroid/widget/RelativeLayout;

.field public wave_image_retry_Layout:Landroid/widget/RelativeLayout;

.field public wave_retry_image:Lcom/alipay/mobile/commonui/widget/APImageView;

.field public white_image:Lcom/alipay/mobile/commonui/widget/APImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string/jumbo v0, "SoundButtonActivity"

    sput-object v0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 112
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    iput-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->a:Ljava/util/Timer;

    .line 41
    iput-boolean v2, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->isWaveNow:Z

    .line 42
    iput-boolean v2, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->timeOut:Z

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->loopNum:F

    .line 44
    iput v2, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->b:I

    .line 45
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->imageView:[Landroid/widget/ImageView;

    .line 46
    new-instance v0, Lcom/alipay/mobile/onsitepay/payer/sound/ab;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/onsitepay/payer/sound/ab;-><init>(Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->c:Landroid/os/Handler;

    .line 278
    iput-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->d:Landroid/graphics/Paint;

    .line 279
    iput-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->e:Landroid/graphics/RectF;

    .line 280
    iput-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->f:Landroid/view/LayoutInflater;

    .line 281
    iput v2, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->g:I

    .line 282
    iput-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->canvasSector:Lcom/alipay/mobile/onsitepay/payer/sound/af;

    .line 113
    sget-object v0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->TAG:Ljava/lang/String;

    .line 114
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/onsitepay/e;->o:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 115
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->loopNum:F

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->canvasSector:Lcom/alipay/mobile/onsitepay/payer/sound/af;

    .line 226
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->wave_circle_image_Layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 227
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 26
    iget v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->b:I

    return v0
.end method

.method static synthetic access$008(Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;)I
    .locals 2
    .parameter

    .prologue
    .line 26
    iget v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->b:I

    return v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->f:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->b()V

    return-void
.end method

.method static synthetic access$300(Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->c:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;)Landroid/graphics/RectF;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->e:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$402(Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->e:Landroid/graphics/RectF;

    return-object p1
.end method

.method static synthetic access$500(Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 26
    iget v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->g:I

    return v0
.end method

.method static synthetic access$600(Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;)Landroid/graphics/Paint;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->d:Landroid/graphics/Paint;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 242
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->a:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 244
    iput-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->a:Ljava/util/Timer;

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->task:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->task:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 248
    iput-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->task:Ljava/util/TimerTask;

    .line 250
    :cond_1
    return-void
.end method


# virtual methods
.method public initAction()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->wave_image:Lcom/alipay/mobile/commonui/widget/APImageView;

    new-instance v1, Lcom/alipay/mobile/onsitepay/payer/sound/ac;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/onsitepay/payer/sound/ac;-><init>(Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    sget-object v0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, " wave_image.getWidth()="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->wave_image:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " wave_image.getHeight()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->wave_image:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->wave_retry_image:Lcom/alipay/mobile/commonui/widget/APImageView;

    new-instance v1, Lcom/alipay/mobile/onsitepay/payer/sound/ad;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/onsitepay/payer/sound/ad;-><init>(Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->setWavingState(Z)V

    .line 198
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->initWave()V

    .line 199
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->a()V

    .line 200
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->wave_image_init_Layout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 202
    return-void
.end method

.method public initWave()V
    .locals 5

    .prologue
    .line 285
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->d:Landroid/graphics/Paint;

    .line 286
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->d:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/16 v2, 0xb

    const/16 v3, 0x86

    const/16 v4, 0xfe

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 287
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->d:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 288
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 290
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->f:Landroid/view/LayoutInflater;

    .line 291
    return-void
.end method

.method public isTimeOut()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->timeOut:Z

    return v0
.end method

.method public isWaveNow()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->isWaveNow:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 136
    sget-object v0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->TAG:Ljava/lang/String;

    .line 137
    sget v0, Lcom/alipay/mobile/onsitepay/d;->aI:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->wave_Layout:Landroid/widget/RelativeLayout;

    .line 138
    sget v0, Lcom/alipay/mobile/onsitepay/d;->aK:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->wave_circle_image_Layout:Landroid/widget/RelativeLayout;

    .line 139
    sget v0, Lcom/alipay/mobile/onsitepay/d;->aN:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->wave_image_retry_Layout:Landroid/widget/RelativeLayout;

    .line 140
    sget v0, Lcom/alipay/mobile/onsitepay/d;->aM:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->wave_image_init_Layout:Landroid/widget/RelativeLayout;

    .line 142
    sget v0, Lcom/alipay/mobile/onsitepay/d;->aL:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->wave_image:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 143
    sget v0, Lcom/alipay/mobile/onsitepay/d;->aO:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->wave_retry_image:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 144
    sget v0, Lcom/alipay/mobile/onsitepay/d;->m:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->button_background_image:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 145
    sget v0, Lcom/alipay/mobile/onsitepay/d;->aP:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->white_image:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 146
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->initAction()V

    .line 147
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 230
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->a()V

    .line 231
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->setWavingState(Z)V

    .line 232
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->wave_image_init_Layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->wave_retry_image:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->wave_image:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 235
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->b()V

    .line 237
    return-void
.end method

.method public setWaveButtonListener(Lcom/alipay/mobile/onsitepay/payer/sound/ag;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->waveButtonListener:Lcom/alipay/mobile/onsitepay/payer/sound/ag;

    .line 152
    return-void
.end method

.method public setWavingState(Z)V
    .locals 2
    .parameter

    .prologue
    .line 125
    sget-object v0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "statechanged,isWaveNow="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->isWaveNow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "after change="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    iput-boolean p1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->isWaveNow:Z

    .line 127
    return-void
.end method

.method public waveRetry()V
    .locals 6

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 157
    sget-object v0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->TAG:Ljava/lang/String;

    .line 158
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->a()V

    .line 159
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->setWavingState(Z)V

    .line 160
    iput-boolean v1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->timeOut:Z

    .line 161
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->wave_image_init_Layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->wave_retry_image:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->wave_image:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 165
    sget-object v0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->b()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->a:Ljava/util/Timer;

    new-instance v0, Lcom/alipay/mobile/onsitepay/payer/sound/ae;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/onsitepay/payer/sound/ae;-><init>(Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->task:Ljava/util/TimerTask;

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->a:Ljava/util/Timer;

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->task:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x7d

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 166
    return-void
.end method
