.class public Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/TextView;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public getResources()Landroid/content/res/Resources;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/mobile/rome/pushservice/b;->a:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onClick: updateUrl="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Lcom/alipay/mobile/rome/pushservice/adapter/b;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/rome/pushservice/adapter/b;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/pushservice/adapter/b;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->finish()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/mobile/rome/pushservice/b;->b:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/rome/pushservice/c;->a:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->setContentView(I)V

    sget v0, Lcom/alipay/mobile/rome/pushservice/b;->a:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->b:Landroid/widget/Button;

    sget v0, Lcom/alipay/mobile/rome/pushservice/b;->b:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->c:Landroid/widget/Button;

    sget v0, Lcom/alipay/mobile/rome/pushservice/b;->c:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "upgrade_params"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->e:Ljava/lang/String;

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->h:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->h:Lorg/json/JSONObject;

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->h:Lorg/json/JSONObject;

    const-string/jumbo v1, "tip"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onCreate: updateTip="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->b:Landroid/widget/Button;

    sget v1, Lcom/alipay/mobile/rome/pushservice/d;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->c:Landroid/widget/Button;

    sget v1, Lcom/alipay/mobile/rome/pushservice/d;->h:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
