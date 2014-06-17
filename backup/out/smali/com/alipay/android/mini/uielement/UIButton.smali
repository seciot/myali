.class public Lcom/alipay/android/mini/uielement/UIButton;
.super Lcom/alipay/android/mini/uielement/BaseElement;


# instance fields
.field private e:I

.field private f:I

.field private g:Landroid/os/CountDownTimer;

.field private h:Landroid/widget/Button;

.field private i:Z

.field private j:[Ljava/lang/String;

.field private k:[Ljava/lang/String;

.field private l:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/android/mini/uielement/BaseElement;-><init>()V

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/UIButton;->i:Z

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/UIButton;->l:Z

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/mini/uielement/UIButton;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIButton;->h:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public final E()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/mini/uielement/UIButton;->i:Z

    return v0
.end method

.method public final F()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIButton;->h:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/android/mini/uielement/UIButton;->e:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIButton;->h:Landroid/widget/Button;

    new-instance v1, Lcom/alipay/android/mini/uielement/i;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/uielement/i;-><init>(Lcom/alipay/android/mini/uielement/UIButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final G()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIButton;->h:Landroid/widget/Button;

    return-object v0
.end method

.method protected final synthetic a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x1

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/alipay/android/mini/uielement/UIButton;->h:Landroid/widget/Button;

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIButton;->j:[Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIButton;->j:[Ljava/lang/String;

    array-length v0, v0

    if-le v0, v2, :cond_3

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIButton;->j:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Landroid/content/Context;[Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/UIButton;->h:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIButton;->k:[Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIButton;->k:[Ljava/lang/String;

    array-length v0, v0

    if-le v0, v2, :cond_6

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIButton;->k:[Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/mini/util/UIPropUtil;->a([Ljava/lang/String;)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/UIButton;->h:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UIButton;->o()F

    move-result v0

    invoke-virtual {p2, v2, v0}, Landroid/widget/Button;->setTextSize(IF)V

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UIButton;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UIButton;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    new-instance v0, Lcom/alipay/android/mini/uielement/g;

    invoke-direct {v0, p0}, Lcom/alipay/android/mini/uielement/g;-><init>(Lcom/alipay/android/mini/uielement/UIButton;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIButton;->j:[Ljava/lang/String;

    array-length v0, v0

    if-ne v0, v2, :cond_4

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UIButton;->q()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/mini/uielement/f;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/uielement/f;-><init>(Lcom/alipay/android/mini/uielement/UIButton;)V

    invoke-static {v0, v1}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Ljava/lang/String;Lcom/alipay/android/app/widget/BaseTarget;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIButton;->h:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIButton;->h:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UIButton;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UIButton;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/alipay/android/mini/uielement/BaseElement;->a(Lorg/json/JSONObject;)V

    const-string/jumbo v0, "time"

    const/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/mini/uielement/UIButton;->f:I

    iput-object v2, p0, Lcom/alipay/android/mini/uielement/UIButton;->j:[Ljava/lang/String;

    iput-object v2, p0, Lcom/alipay/android/mini/uielement/UIButton;->k:[Ljava/lang/String;

    const-string/jumbo v0, "submit"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/UIButton;->i:Z

    const-string/jumbo v0, "image"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "color"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sms"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/android/mini/uielement/UIButton;->l:Z

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UIButton;->j:[Ljava/lang/String;

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UIButton;->k:[Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIButton;->h:Landroid/widget/Button;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/ElementFactory;->a(Landroid/view/View;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/alipay/android/mini/uielement/BaseElement;->dispose()V

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UIButton;->g:Landroid/os/CountDownTimer;

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UIButton;->h:Landroid/widget/Button;

    return-void
.end method

.method public final e()Lorg/json/JSONObject;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UIButton;->s()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected final t()I
    .locals 1

    sget v0, Lcom/alipay/android/app/R$layout;->g:I

    return v0
.end method

.method protected final u()V
    .locals 6

    iget-boolean v0, p0, Lcom/alipay/android/mini/uielement/UIButton;->l:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UIButton;->f()Lcom/alipay/android/mini/uielement/IUIComponet;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/mini/uielement/BaseComponent;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/alipay/android/mini/uielement/BaseComponent;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/mini/uielement/IUIElement;

    instance-of v2, v0, Lcom/alipay/android/mini/uielement/UIInput;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/alipay/android/mini/uielement/UIInput;

    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/UIInput;->z()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Landroid/widget/EditText;)V

    :cond_1
    const v0, 0xea60

    iput v0, p0, Lcom/alipay/android/mini/uielement/UIButton;->e:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/alipay/android/mini/uielement/UIButton;->f:I

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIButton;->h:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    new-instance v0, Lcom/alipay/android/mini/uielement/h;

    iget v1, p0, Lcom/alipay/android/mini/uielement/UIButton;->e:I

    int-to-long v2, v1

    iget v1, p0, Lcom/alipay/android/mini/uielement/UIButton;->f:I

    int-to-long v4, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/mini/uielement/h;-><init>(Lcom/alipay/android/mini/uielement/UIButton;JJ)V

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UIButton;->g:Landroid/os/CountDownTimer;

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIButton;->g:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_2
    return-void
.end method
