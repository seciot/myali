.class final Lcom/alipay/android/phone/home/manager/f;
.super Ljava/lang/Object;
.source "AppItemView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

.field final synthetic b:Lcom/alipay/android/phone/home/manager/ViewHolder;

.field final synthetic c:Z

.field final synthetic d:Lcom/alipay/android/phone/home/manager/AppItemView;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/manager/AppItemView;Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;Lcom/alipay/android/phone/home/manager/ViewHolder;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/alipay/android/phone/home/manager/f;->d:Lcom/alipay/android/phone/home/manager/AppItemView;

    iput-object p2, p0, Lcom/alipay/android/phone/home/manager/f;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    iput-object p3, p0, Lcom/alipay/android/phone/home/manager/f;->b:Lcom/alipay/android/phone/home/manager/ViewHolder;

    iput-boolean p4, p0, Lcom/alipay/android/phone/home/manager/f;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 73
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/f;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/f;->b:Lcom/alipay/android/phone/home/manager/ViewHolder;

    iget-object v0, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->e:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    .line 75
    iget-boolean v0, p0, Lcom/alipay/android/phone/home/manager/f;->c:Z

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/f;->b:Lcom/alipay/android/phone/home/manager/ViewHolder;

    iget-object v0, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->c:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/f;->b:Lcom/alipay/android/phone/home/manager/ViewHolder;

    iget-object v0, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->d:Lcom/alipay/mobile/commonui/widget/APProgressBar;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APProgressBar;->setProgress(I)V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/f;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 81
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/f;->b:Lcom/alipay/android/phone/home/manager/ViewHolder;

    iget-object v0, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->e:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    .line 82
    iget-boolean v0, p0, Lcom/alipay/android/phone/home/manager/f;->c:Z

    if-nez v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/f;->b:Lcom/alipay/android/phone/home/manager/ViewHolder;

    iget-object v0, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->c:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/f;->b:Lcom/alipay/android/phone/home/manager/ViewHolder;

    iget-object v0, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->d:Lcom/alipay/mobile/commonui/widget/APProgressBar;

    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/f;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getDownLoadProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APProgressBar;->setProgress(I)V

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/f;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getStatus()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 89
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/f;->d:Lcom/alipay/android/phone/home/manager/AppItemView;

    #getter for: Lcom/alipay/android/phone/home/manager/AppItemView;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;
    invoke-static {v0}, Lcom/alipay/android/phone/home/manager/AppItemView;->access$000(Lcom/alipay/android/phone/home/manager/AppItemView;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isInstalled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 90
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/f;->d:Lcom/alipay/android/phone/home/manager/AppItemView;

    #getter for: Lcom/alipay/android/phone/home/manager/AppItemView;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;
    invoke-static {v0}, Lcom/alipay/android/phone/home/manager/AppItemView;->access$000(Lcom/alipay/android/phone/home/manager/AppItemView;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->independantApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-eq v0, v1, :cond_2

    .line 91
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/f;->b:Lcom/alipay/android/phone/home/manager/ViewHolder;

    iget-object v0, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/openplatform/R$string;->c:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/f;->b:Lcom/alipay/android/phone/home/manager/ViewHolder;

    iget-object v0, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/openplatform/R$color;->a:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setBackgroundColor(I)V

    .line 98
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/f;->b:Lcom/alipay/android/phone/home/manager/ViewHolder;

    iget-object v0, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->e:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/f;->b:Lcom/alipay/android/phone/home/manager/ViewHolder;

    iget-object v0, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->c:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    .line 106
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/f;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getStatus()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 107
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/f;->b:Lcom/alipay/android/phone/home/manager/ViewHolder;

    iget-object v0, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->e:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/f;->b:Lcom/alipay/android/phone/home/manager/ViewHolder;

    iget-object v0, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->c:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    .line 110
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/f;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getStatus()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    .line 111
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/f;->d:Lcom/alipay/android/phone/home/manager/AppItemView;

    #getter for: Lcom/alipay/android/phone/home/manager/AppItemView;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;
    invoke-static {v0}, Lcom/alipay/android/phone/home/manager/AppItemView;->access$000(Lcom/alipay/android/phone/home/manager/AppItemView;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isInstalled()Z

    move-result v0

    if-nez v0, :cond_9

    .line 112
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/f;->d:Lcom/alipay/android/phone/home/manager/AppItemView;

    #getter for: Lcom/alipay/android/phone/home/manager/AppItemView;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;
    invoke-static {v0}, Lcom/alipay/android/phone/home/manager/AppItemView;->access$000(Lcom/alipay/android/phone/home/manager/AppItemView;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->independantApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-eq v0, v1, :cond_5

    .line 113
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/f;->b:Lcom/alipay/android/phone/home/manager/ViewHolder;

    iget-object v0, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/openplatform/R$string;->c:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/f;->b:Lcom/alipay/android/phone/home/manager/ViewHolder;

    iget-object v0, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/openplatform/R$color;->a:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setBackgroundColor(I)V

    .line 120
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/f;->b:Lcom/alipay/android/phone/home/manager/ViewHolder;

    iget-object v0, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->e:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    .line 122
    :cond_5
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/f;->b:Lcom/alipay/android/phone/home/manager/ViewHolder;

    iget-object v0, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->c:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    .line 128
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/f;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getStatus()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_7

    .line 129
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/f;->b:Lcom/alipay/android/phone/home/manager/ViewHolder;

    iget-object v0, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->e:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/f;->b:Lcom/alipay/android/phone/home/manager/ViewHolder;

    iget-object v0, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->c:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    .line 132
    :cond_7
    return-void

    .line 102
    :cond_8
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/f;->b:Lcom/alipay/android/phone/home/manager/ViewHolder;

    iget-object v0, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->e:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/f;->b:Lcom/alipay/android/phone/home/manager/ViewHolder;

    iget-object v0, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->c:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 124
    :cond_9
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/f;->b:Lcom/alipay/android/phone/home/manager/ViewHolder;

    iget-object v0, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->e:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/f;->b:Lcom/alipay/android/phone/home/manager/ViewHolder;

    iget-object v0, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->c:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method
