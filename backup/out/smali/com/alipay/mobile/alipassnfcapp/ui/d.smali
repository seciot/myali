.class final Lcom/alipay/mobile/alipassnfcapp/ui/d;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/d;->a:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/d;->a:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;

    iget-boolean v0, v0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->stopFlag:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/d;->a:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;

    iget-boolean v0, v0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->stopAnim:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/d;->a:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;

    #getter for: Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->loopShowAnimation:I
    invoke-static {v0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->access$000(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;)I

    move-result v0

    rem-int/lit8 v0, v0, 0x5

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/d;->a:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/d;->a:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;

    #getter for: Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->inflater:Landroid/view/LayoutInflater;
    invoke-static {v0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->access$200(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/alipassnfcapp/d;->b:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    #setter for: Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->animImgView:Lcom/alipay/mobile/commonui/widget/APImageView;
    invoke-static {v1, v0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->access$102(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;Lcom/alipay/mobile/commonui/widget/APImageView;)Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/d;->a:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;

    #getter for: Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->animImgView:Lcom/alipay/mobile/commonui/widget/APImageView;
    invoke-static {v0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->access$100(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;)Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/d;->a:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->getRootController()Lcom/alipay/mobile/alipassnfcapp/ui/RootController;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/alipassnfcapp/b;->a:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/d;->a:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;

    #getter for: Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->animImgView:Lcom/alipay/mobile/commonui/widget/APImageView;
    invoke-static {v0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->access$100(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;)Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/d;->a:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;

    #getter for: Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->animImgView:Lcom/alipay/mobile/commonui/widget/APImageView;
    invoke-static {v1}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->access$100(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;)Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/d;->a:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;

    #getter for: Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->wave_Layout:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;
    invoke-static {v0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->access$300(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;)Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/d;->a:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;

    #getter for: Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->animImgView:Lcom/alipay/mobile/commonui/widget/APImageView;
    invoke-static {v1}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->access$100(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;)Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/d;->a:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;

    invoke-static {v0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->access$008(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;)I

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/d;->a:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;

    iget-object v1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/d;->a:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;

    iget v1, v1, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->loopNum:F

    const/high16 v2, 0x4010

    add-float/2addr v1, v2

    iput v1, v0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->loopNum:F

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/d;->a:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;

    iget v0, v0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->loopNum:F

    const/high16 v1, 0x43b5

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/d;->a:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;

    iget-object v0, v0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->canvasSector:Lcom/alipay/mobile/alipassnfcapp/ui/g;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/d;->a:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;

    new-instance v1, Lcom/alipay/mobile/alipassnfcapp/ui/g;

    iget-object v2, p0, Lcom/alipay/mobile/alipassnfcapp/ui/d;->a:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;

    iget-object v3, p0, Lcom/alipay/mobile/alipassnfcapp/ui/d;->a:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;

    invoke-virtual {v3}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->getRootController()Lcom/alipay/mobile/alipassnfcapp/ui/RootController;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/alipassnfcapp/ui/d;->a:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;

    iget v4, v4, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->loopNum:F

    float-to-double v4, v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/alipassnfcapp/ui/g;-><init>(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;Landroid/content/Context;D)V

    iput-object v1, v0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->canvasSector:Lcom/alipay/mobile/alipassnfcapp/ui/g;

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/d;->a:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;

    #getter for: Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->wave_circle_image_Layout:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;
    invoke-static {v0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->access$400(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;)Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/d;->a:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;

    iget-object v1, v1, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->canvasSector:Lcom/alipay/mobile/alipassnfcapp/ui/g;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->addView(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/d;->a:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;

    iget-object v0, v0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->canvasSector:Lcom/alipay/mobile/alipassnfcapp/ui/g;

    iget-object v1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/d;->a:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;

    iget v1, v1, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->loopNum:F

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/alipassnfcapp/ui/g;->a(D)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/d;->a:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;

    iget-object v0, v0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->canvasSector:Lcom/alipay/mobile/alipassnfcapp/ui/g;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassnfcapp/ui/g;->invalidate()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/d;->a:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;

    iput-boolean v4, v0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->stopAnim:Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/d;->a:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;

    #calls: Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->clearMessage()V
    invoke-static {v0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->access$500(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/d;->a:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;

    iget-boolean v0, v0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->stopAnim:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/d;->a:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->wavePause()V

    goto :goto_0
.end method
