.class public Lcom/alipay/mobile/commonui/widget/APSelectionBar;
.super Lcom/alipay/mobile/commonui/widget/APImageView;


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/alipay/mobile/commonui/widget/APSelectionBar$LetterSelectedListener;

.field private d:[C


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APSelectionBar;->b:I

    const/16 v0, 0x1c

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSelectionBar;->d:[C

    return-void

    :array_0
    .array-data 0x2
        0x3ft 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
        0x23t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APSelectionBar;->b:I

    const/16 v0, 0x1c

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSelectionBar;->d:[C

    return-void

    :array_0
    .array-data 0x2
        0x3ft 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
        0x23t 0x0t
    .end array-data
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/APSelectionBar;->b:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSelectionBar;->c:Lcom/alipay/mobile/commonui/widget/APSelectionBar$LetterSelectedListener;

    const/16 v1, 0x3f

    invoke-interface {v0, v1}, Lcom/alipay/mobile/commonui/widget/APSelectionBar$LetterSelectedListener;->onLetterSelected(C)V

    goto :goto_0

    :cond_1
    if-ltz v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSelectionBar;->d:[C

    array-length v0, v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSelectionBar;->c:Lcom/alipay/mobile/commonui/widget/APSelectionBar$LetterSelectedListener;

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APSelectionBar;->d:[C

    aget-char v1, v2, v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/commonui/widget/APSelectionBar$LetterSelectedListener;->onLetterSelected(C)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/mobile/commonui/widget/APImageView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APSelectionBar;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APSelectionBar;->a:I

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APSelectionBar;->a:I

    div-int/lit8 v0, v0, 0x1c

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APSelectionBar;->b:I

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    iput p2, p0, Lcom/alipay/mobile/commonui/widget/APSelectionBar;->a:I

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APSelectionBar;->a:I

    div-int/lit8 v0, v0, 0x1c

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APSelectionBar;->b:I

    return-void
.end method

.method public setOnLetterSelectedListener(Lcom/alipay/mobile/commonui/widget/APSelectionBar$LetterSelectedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APSelectionBar;->c:Lcom/alipay/mobile/commonui/widget/APSelectionBar$LetterSelectedListener;

    return-void
.end method
