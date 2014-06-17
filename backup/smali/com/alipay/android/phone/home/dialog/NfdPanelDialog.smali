.class public Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;
.super Landroid/app/Dialog;
.source "NfdPanelDialog.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/alipay/android/phone/home/widget/NfdPanelView;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/animation/Animation;

.field private h:Landroid/view/animation/Animation;

.field private i:Landroid/view/animation/AlphaAnimation;

.field private j:Landroid/view/animation/AlphaAnimation;

.field private k:Landroid/view/animation/ScaleAnimation;

.field private l:Landroid/view/animation/ScaleAnimation;

.field private m:Lcom/alipay/mobile/nfd/nfdbiz/ITopBoardStateCallBack;

.field private n:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 40
    sget v0, Lcom/alipay/android/phone/openplatform/R$style;->a:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 41
    iput-object p1, p0, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->b:Landroid/content/Context;

    .line 42
    invoke-virtual {p0, v1}, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->setCanceledOnTouchOutside(Z)V

    .line 43
    sget v0, Lcom/alipay/android/phone/openplatform/R$layout;->k:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->setContentView(I)V

    .line 45
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->o:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/widget/NfdPanelView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->c:Lcom/alipay/android/phone/home/widget/NfdPanelView;

    .line 46
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->y:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->d:Landroid/view/View;

    .line 47
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->e:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->e:Landroid/view/View;

    .line 48
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->n:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->f:Landroid/view/View;

    .line 51
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 52
    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 53
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 54
    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 55
    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 56
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 59
    sget v0, Lcom/alipay/android/phone/openplatform/R$anim;->b:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->h:Landroid/view/animation/Animation;

    .line 61
    iget-object v0, p0, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->h:Landroid/view/animation/Animation;

    new-instance v1, Lcom/alipay/android/phone/home/dialog/a;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/home/dialog/a;-><init>(Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 83
    sget v0, Lcom/alipay/android/phone/openplatform/R$anim;->a:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->g:Landroid/view/animation/Animation;

    .line 85
    iget-object v0, p0, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->g:Landroid/view/animation/Animation;

    new-instance v1, Lcom/alipay/android/phone/home/dialog/b;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/home/dialog/b;-><init>(Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 108
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3dcccccd

    const v2, 0x3f19999a

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->i:Landroid/view/animation/AlphaAnimation;

    .line 109
    iget-object v0, p0, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->i:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 110
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3f19999a

    const v2, 0x3dcccccd

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->j:Landroid/view/animation/AlphaAnimation;

    .line 111
    iget-object v0, p0, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->j:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 112
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f80

    const v2, 0x3f19999a

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->k:Landroid/view/animation/ScaleAnimation;

    .line 115
    iget-object v0, p0, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->k:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 116
    iget-object v0, p0, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->k:Landroid/view/animation/ScaleAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 117
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f19999a

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->l:Landroid/view/animation/ScaleAnimation;

    .line 120
    iget-object v0, p0, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->l:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 121
    iget-object v0, p0, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->l:Landroid/view/animation/ScaleAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 124
    iget-object v0, p0, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->c:Lcom/alipay/android/phone/home/widget/NfdPanelView;

    new-instance v1, Lcom/alipay/android/phone/home/dialog/c;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/home/dialog/c;-><init>(Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/widget/NfdPanelView;->initGestureData(Landroid/view/GestureDetector$OnGestureListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    sget-object v1, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "NfdPanelDialog init err:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;)Lcom/alipay/mobile/nfd/nfdbiz/ITopBoardStateCallBack;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->m:Lcom/alipay/mobile/nfd/nfdbiz/ITopBoardStateCallBack;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->n:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->c:Lcom/alipay/android/phone/home/widget/NfdPanelView;

    iget-object v1, p0, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->h:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/widget/NfdPanelView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 204
    iget-object v0, p0, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->j:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 205
    iget-object v0, p0, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->l:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 206
    return-void
.end method

.method public final a(IZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 184
    if-eqz v0, :cond_1

    .line 185
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 190
    :goto_0
    iget-object v1, p0, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->d:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 193
    if-eqz p2, :cond_0

    .line 194
    iget-object v0, p0, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->c:Lcom/alipay/android/phone/home/widget/NfdPanelView;

    iget-object v1, p0, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->g:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/widget/NfdPanelView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 196
    iget-object v0, p0, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->i:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 198
    iget-object v0, p0, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->k:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 200
    :cond_0
    return-void

    .line 187
    :cond_1
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method public final a(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter

    .prologue
    .line 209
    if-eqz p1, :cond_0

    .line 210
    iget-object v0, p0, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->c:Lcom/alipay/android/phone/home/widget/NfdPanelView;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/home/widget/NfdPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    :cond_0
    return-void
.end method

.method public final a(Lcom/alipay/mobile/nfd/nfdbiz/ITopBoardStateCallBack;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->m:Lcom/alipay/mobile/nfd/nfdbiz/ITopBoardStateCallBack;

    .line 229
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 215
    iget-object v0, p0, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->c:Lcom/alipay/android/phone/home/widget/NfdPanelView;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->c:Lcom/alipay/android/phone/home/widget/NfdPanelView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/android/phone/home/widget/NfdPanelView;->setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->n:Landroid/view/View$OnClickListener;

    .line 223
    iget-object v0, p0, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->d:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v0, p0, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->e:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    return-void
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->n:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->n:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 180
    :cond_0
    return-void
.end method
