.class public final Lcom/alipay/mobile/onsitepay/utils/g;
.super Ljava/lang/Object;
.source "StyleAlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static a:Z


# instance fields
.field private b:Landroid/app/AlertDialog;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Lcom/alipay/mobile/onsitepay/utils/h;

.field private g:Landroid/content/DialogInterface$OnClickListener;

.field private h:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string/jumbo v1, "4.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    sget-boolean v0, Lcom/alipay/mobile/onsitepay/utils/g;->a:Z

    if-nez v0, :cond_2

    .line 40
    iput-object p7, p0, Lcom/alipay/mobile/onsitepay/utils/g;->g:Landroid/content/DialogInterface$OnClickListener;

    .line 41
    iput-object p5, p0, Lcom/alipay/mobile/onsitepay/utils/g;->h:Landroid/content/DialogInterface$OnClickListener;

    .line 49
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/g;->b:Landroid/app/AlertDialog;

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/g;->b:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 52
    new-instance v0, Lcom/alipay/mobile/onsitepay/utils/h;

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/utils/g;->b:Landroid/app/AlertDialog;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/onsitepay/utils/h;-><init>(Landroid/content/DialogInterface;)V

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/g;->f:Lcom/alipay/mobile/onsitepay/utils/h;

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/g;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/g;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 56
    sget v1, Lcom/alipay/mobile/onsitepay/e;->a:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/g;->c:Landroid/view/View;

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/g;->c:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/onsitepay/d;->N:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 59
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    .line 60
    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/g;->c:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/onsitepay/d;->k:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/g;->d:Landroid/widget/Button;

    .line 66
    if-eqz p6, :cond_4

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/g;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/g;->d:Landroid/widget/Button;

    invoke-virtual {v0, p6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/g;->c:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/onsitepay/d;->l:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/g;->e:Landroid/widget/Button;

    .line 73
    if-eqz p4, :cond_5

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/g;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/g;->e:Landroid/widget/Button;

    invoke-virtual {v0, p4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 81
    :goto_3
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string/jumbo v1, "4.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    sget-boolean v0, Lcom/alipay/mobile/onsitepay/utils/g;->a:Z

    if-nez v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/g;->d:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$drawable;->subsub_btn_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/g;->d:Landroid/widget/Button;

    sget v1, Lcom/alipay/mobile/ui/R$drawable;->sub_button:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/g;->e:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/onsitepay/c;->c:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/g;->e:Landroid/widget/Button;

    sget v1, Lcom/alipay/mobile/ui/R$drawable;->main_button:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 103
    :cond_1
    return-void

    .line 46
    :cond_2
    iput-object p5, p0, Lcom/alipay/mobile/onsitepay/utils/g;->g:Landroid/content/DialogInterface$OnClickListener;

    .line 47
    iput-object p7, p0, Lcom/alipay/mobile/onsitepay/utils/g;->h:Landroid/content/DialogInterface$OnClickListener;

    move-object v4, p6

    move-object p6, p4

    move-object p4, v4

    goto/16 :goto_0

    .line 62
    :cond_3
    invoke-static {p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 70
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/g;->d:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 77
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/g;->e:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/g;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/g;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/g;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 111
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 112
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    add-int/lit8 v0, v0, -0x3c

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 115
    const/16 v0, 0x11

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/g;->b:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/utils/g;->c:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/g;->b:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/g;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/g;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 126
    :cond_0
    return-void
.end method

.method public final c()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/g;->b:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/g;->d:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/g;->g:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/g;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/g;->f:Lcom/alipay/mobile/onsitepay/utils/h;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/utils/g;->g:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/onsitepay/utils/h;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 141
    :goto_0
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 142
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/g;->e:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/g;->h:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/g;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/g;->f:Lcom/alipay/mobile/onsitepay/utils/h;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/utils/g;->h:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/onsitepay/utils/h;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/g;->f:Lcom/alipay/mobile/onsitepay/utils/h;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/utils/g;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/onsitepay/utils/h;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0
.end method
