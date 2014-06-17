.class public Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "BaseAppsItemAdapter.java"


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a:Ljava/util/List;

    .line 33
    iput-object p1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->b:Landroid/view/LayoutInflater;

    .line 34
    invoke-virtual {p0, p2}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a(Ljava/util/List;)V

    .line 35
    return-void
.end method

.method private a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Landroid/view/View;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 76
    if-nez p2, :cond_8

    .line 77
    new-instance v2, Lcom/alipay/android/phone/home/manager/AppItemView;

    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/alipay/android/phone/home/manager/AppItemView;-><init>(Landroid/content/Context;)V

    .line 78
    new-instance v1, Lcom/alipay/android/phone/home/manager/ViewHolder;

    invoke-direct {v1}, Lcom/alipay/android/phone/home/manager/ViewHolder;-><init>()V

    .line 79
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->a:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, v1, Lcom/alipay/android/phone/home/manager/ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 81
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->q:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, v1, Lcom/alipay/android/phone/home/manager/ViewHolder;->c:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    .line 83
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->r:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APProgressBar;

    iput-object v0, v1, Lcom/alipay/android/phone/home/manager/ViewHolder;->d:Lcom/alipay/mobile/commonui/widget/APProgressBar;

    .line 85
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->b:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v1, Lcom/alipay/android/phone/home/manager/ViewHolder;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 87
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->j:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, v1, Lcom/alipay/android/phone/home/manager/ViewHolder;->e:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    .line 89
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->k:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v1, Lcom/alipay/android/phone/home/manager/ViewHolder;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 92
    if-eqz p1, :cond_0

    .line 93
    iget-object v0, v1, Lcom/alipay/android/phone/home/manager/ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setTag(Ljava/lang/Object;)V

    .line 94
    iget-object v0, v1, Lcom/alipay/android/phone/home/manager/ViewHolder;->e:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 95
    iget-object v0, v1, Lcom/alipay/android/phone/home/manager/ViewHolder;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTag(Ljava/lang/Object;)V

    .line 98
    :cond_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 101
    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/manager/ViewHolder;

    move-object v1, v2

    .line 102
    check-cast v1, Lcom/alipay/android/phone/home/manager/AppItemView;

    invoke-virtual {v1, p1}, Lcom/alipay/android/phone/home/manager/AppItemView;->setApp(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    .line 105
    iget-object v1, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->e:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    .line 106
    iget-object v1, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->c:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    .line 115
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 116
    :cond_1
    iget-object v1, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 117
    iget-object v0, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 119
    invoke-virtual {v2, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 215
    :cond_2
    :goto_1
    return-object v2

    .line 123
    :cond_3
    iget-object v1, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 124
    iget-object v1, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 127
    sget v1, Lcom/alipay/mobile/ui/R$id;->performance_sdk_monitor_key:I

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 129
    iget-object v1, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->iconHasLoaded()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 131
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 132
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isAlipayApp()Z

    invoke-virtual {p0, v1}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 134
    iget-object v3, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    :goto_2
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isOffline()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 173
    iget-object v1, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v3, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v3}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/android/phone/openplatform/R$string;->d:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v1, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v3, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v3}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/android/phone/openplatform/R$color;->b:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setBackgroundColor(I)V

    .line 175
    iget-object v0, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->e:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 136
    :cond_4
    new-instance v1, Lcom/alipay/android/phone/home/manager/g;

    invoke-direct {v1, p0, p1, v0}, Lcom/alipay/android/phone/home/manager/g;-><init>(Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/android/phone/home/manager/ViewHolder;)V

    .line 155
    invoke-virtual {p1, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->loadIcon(Lcom/alipay/mobile/framework/service/ext/openplatform/AppIconLoadCallback;)V

    .line 156
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->loadFromLocal()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 157
    if-eqz v1, :cond_5

    .line 158
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isAlipayApp()Z

    invoke-virtual {p0, v1}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 159
    iget-object v3, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 161
    :cond_5
    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/alipay/mobile/openplatform/common/R$drawable;->app_default:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 166
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isAlipayApp()Z

    .line 168
    iget-object v3, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 176
    :cond_6
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isInstalled()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isDownloading()Z

    move-result v1

    if-nez v1, :cond_7

    .line 177
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v1

    sget-object v3, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->independantApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-eq v1, v3, :cond_2

    .line 178
    iget-object v1, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v3, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v3}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/android/phone/openplatform/R$string;->c:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v1, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v3, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v3}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/android/phone/openplatform/R$color;->a:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setBackgroundColor(I)V

    .line 180
    iget-object v0, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->e:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 182
    :cond_7
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isDownloading()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 183
    iget-object v1, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->e:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    .line 184
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isInstalled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 185
    iget-object v1, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->c:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    .line 186
    iget-object v0, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->d:Lcom/alipay/mobile/commonui/widget/APProgressBar;

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallStatus()Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getDownLoadProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APProgressBar;->setProgress(I)V

    goto/16 :goto_1

    :cond_8
    move-object v2, p2

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected final a(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter

    .prologue
    .line 227
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 228
    return-object v0
.end method

.method public final a(I)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    return-object v0
.end method

.method public final a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V
    .locals 3
    .parameter

    .prologue
    .line 262
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 274
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->notifyDataSetChanged()V

    .line 275
    return-void

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 266
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 268
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 269
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 327
    return-void
.end method

.method public final b(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V
    .locals 5
    .parameter

    .prologue
    .line 283
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ChannelConfigUtils;->isBannedApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    const/4 v1, 0x0

    .line 288
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 289
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 294
    :goto_1
    if-eqz v0, :cond_3

    .line 295
    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 297
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 298
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public final c(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V
    .locals 5
    .parameter

    .prologue
    .line 302
    const/4 v1, 0x0

    .line 303
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ChannelConfigUtils;->isBannedApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 307
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 312
    :goto_1
    if-eqz v0, :cond_0

    .line 313
    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 314
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isDisplay()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 315
    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 319
    :goto_2
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 317
    :cond_3
    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0x4

    .line 40
    rsub-int/lit8 v0, v0, 0x4

    rem-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 41
    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a(I)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 55
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 64
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    invoke-direct {p0, v0, p2}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    .line 67
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method
