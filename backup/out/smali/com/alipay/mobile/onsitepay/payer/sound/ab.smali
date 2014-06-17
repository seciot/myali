.class final Lcom/alipay/mobile/onsitepay/payer/sound/ab;
.super Landroid/os/Handler;
.source "SoundButtonActivity.java"


# instance fields
.field final synthetic a:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/ab;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x4190

    .line 49
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 50
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v6, :cond_2

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/ab;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->isWaveNow()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/ab;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    iget-boolean v0, v0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->timeOut:Z

    if-nez v0, :cond_5

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/ab;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    #getter for: Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->b:I
    invoke-static {v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->access$000(Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;)I

    move-result v0

    rem-int/lit8 v0, v0, 0x6

    if-nez v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/ab;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    #getter for: Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->b:I
    invoke-static {v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->access$000(Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;)I

    move-result v0

    div-int/lit8 v0, v0, 0x6

    rem-int/lit8 v1, v0, 0x4

    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/ab;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->imageView:[Landroid/widget/ImageView;

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/ab;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    iget-object v2, v0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->imageView:[Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/ab;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    #getter for: Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->f:Landroid/view/LayoutInflater;
    invoke-static {v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->access$100(Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/onsitepay/e;->k:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    aput-object v0, v2, v1

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/ab;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->wave_Layout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/payer/sound/ab;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    iget-object v2, v2, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->imageView:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 57
    sget-object v0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "imageView["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "] \u4ea7\u751f"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/ab;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/onsitepay/b;->a:I

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 60
    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/payer/sound/ab;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    iget-object v2, v2, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->imageView:[Landroid/widget/ImageView;

    aget-object v1, v2, v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/ab;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    invoke-static {v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->access$008(Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;)I

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/ab;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/ab;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    iget v1, v1, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->loopNum:F

    const/high16 v2, 0x4010

    add-float/2addr v1, v2

    iput v1, v0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->loopNum:F

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/ab;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    iget v0, v0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->loopNum:F

    const/high16 v1, 0x43b5

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/ab;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->canvasSector:Lcom/alipay/mobile/onsitepay/payer/sound/af;

    if-nez v0, :cond_3

    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/ab;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    new-instance v1, Lcom/alipay/mobile/onsitepay/payer/sound/af;

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/payer/sound/ab;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    iget-object v3, p0, Lcom/alipay/mobile/onsitepay/payer/sound/ab;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    invoke-virtual {v3}, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/onsitepay/payer/sound/ab;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    iget v4, v4, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->loopNum:F

    float-to-double v4, v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/onsitepay/payer/sound/af;-><init>(Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;Landroid/content/Context;D)V

    iput-object v1, v0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->canvasSector:Lcom/alipay/mobile/onsitepay/payer/sound/af;

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/ab;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->wave_circle_image_Layout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/ab;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    iget-object v1, v1, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->canvasSector:Lcom/alipay/mobile/onsitepay/payer/sound/af;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 88
    :cond_2
    :goto_0
    return-void

    .line 69
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/ab;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->canvasSector:Lcom/alipay/mobile/onsitepay/payer/sound/af;

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/ab;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    iget v1, v1, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->loopNum:F

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/onsitepay/payer/sound/af;->a(D)V

    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/ab;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->canvasSector:Lcom/alipay/mobile/onsitepay/payer/sound/af;

    invoke-virtual {v0}, Lcom/alipay/mobile/onsitepay/payer/sound/af;->invalidate()V

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/ab;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    iget v0, v0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->loopNum:F

    rem-float/2addr v0, v5

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/ab;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->waveButtonListener:Lcom/alipay/mobile/onsitepay/payer/sound/ag;

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/ab;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    iget v1, v1, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->loopNum:F

    div-float/2addr v1, v5

    float-to-int v1, v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/onsitepay/payer/sound/ag;->a(I)V

    goto :goto_0

    .line 76
    :cond_4
    sget-object v0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "  timeOut true loopNum="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/ab;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    iget v1, v1, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->loopNum:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/ab;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    iput-boolean v6, v0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->timeOut:Z

    goto :goto_0

    .line 80
    :cond_5
    sget-object v0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "  !stopFlag && !timeOut isWaveNow="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/ab;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    iget-boolean v1, v1, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->isWaveNow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " timeOut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/ab;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    iget-boolean v1, v1, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->timeOut:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/ab;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    #calls: Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->b()V
    invoke-static {v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->access$200(Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;)V

    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/ab;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    iget-boolean v0, v0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->timeOut:Z

    if-eqz v0, :cond_2

    .line 83
    sget-object v0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->TAG:Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/ab;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->waveButtonListener:Lcom/alipay/mobile/onsitepay/payer/sound/ag;

    invoke-interface {v0}, Lcom/alipay/mobile/onsitepay/payer/sound/ag;->a()V

    goto :goto_0
.end method
