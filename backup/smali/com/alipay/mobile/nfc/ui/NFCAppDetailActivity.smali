.class public Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ljava/util/Observer;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

.field private d:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

.field private e:Lcom/alipay/mobile/commonui/widget/APTitleBar;

.field private f:Landroid/widget/Button;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/ListView;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->n:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;)Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    return-object v0
.end method

.method private a()V
    .locals 11

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppDesc()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->k:Landroid/widget/TextView;

    const-string/jumbo v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v0, v4, v2

    const-string/jumbo v6, ":"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v6, v0, v1

    const/4 v7, 0x1

    aget-object v0, v0, v7

    const-string/jumbo v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    move v0, v1

    :goto_1
    if-ge v0, v8, :cond_0

    aget-object v9, v7, v0

    new-instance v10, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$Phone;

    invoke-direct {v10, p0, v6, v9}, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$Phone;-><init>(Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$SupportPhoneListAdapter;

    invoke-direct {v0, p0, v3}, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$SupportPhoneListAdapter;-><init>(Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;Ljava/util/List;)V

    iget-object v2, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->l:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->g:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->l:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->l:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->l:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_2
    return-void

    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->l:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    goto :goto_2
.end method

.method static synthetic a(Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "sub_button_style"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->f:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/nfc/R$drawable;->f:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->f:Landroid/widget/Button;

    sget v1, Lcom/alipay/mobile/nfc/R$drawable;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->f:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/nfc/R$drawable;->c:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->f:Landroid/widget/Button;

    sget v1, Lcom/alipay/mobile/nfc/R$drawable;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    return-object v0
.end method

.method private b()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->e:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getSize()I

    move-result v1

    const/16 v2, 0x400

    if-le v1, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getSize()I

    move-result v1

    div-int/lit16 v1, v1, 0x400

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getSize()I

    move-result v1

    rem-int/lit16 v1, v1, 0x400

    mul-int/lit8 v1, v1, 0x64

    div-int/lit16 v1, v1, 0x400

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "sub_button_style"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->f:Landroid/widget/Button;

    const-string/jumbo v1, "\u6b63\u5728\u4e0b\u8f7d\u2026"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->f:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_1
    return-void

    :cond_1
    iget v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->f:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->f:Landroid/widget/Button;

    sget v1, Lcom/alipay/mobile/nfc/R$string;->l:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    const-string/jumbo v0, "main_button_style"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->a(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->f:Landroid/widget/Button;

    sget v1, Lcom/alipay/mobile/nfc/R$string;->c:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    const-string/jumbo v0, "main_button_style"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->a(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic c(Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->b()V

    return-void
.end method

.method static synthetic d(Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->f:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;)I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->a:I

    return v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getAppByAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppInfo()Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->saveOrUpdateAppEntity(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)V

    :cond_0
    iget v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->a:I

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "main_button_style"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->f:Landroid/widget/Button;

    const-string/jumbo v1, "\u6b63\u5728\u4e0b\u8f7d\u2026"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    new-instance v0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$4;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$4;-><init>(Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$4;->start()V

    return-void

    :pswitch_0
    const-string/jumbo v0, "main_button_style"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->f:Landroid/widget/Button;

    const-string/jumbo v1, "\u6b63\u5728\u66f4\u65b0\u2026"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xca
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/nfc/R$layout;->j:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "APP_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "UPGRADE"

    const/16 v2, 0xc9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->a:I

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    sget v0, Lcom/alipay/mobile/nfc/R$id;->D:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->e:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v0, Lcom/alipay/mobile/nfc/R$id;->z:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->l:Landroid/widget/ListView;

    sget v0, Lcom/alipay/mobile/nfc/R$id;->C:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->f:Landroid/widget/Button;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/nfc/R$layout;->k:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->g:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/nfc/R$id;->y:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->g:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/nfc/R$id;->B:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->g:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/nfc/R$id;->A:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->g:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/nfc/R$id;->w:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->g:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/nfc/R$id;->x:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->m:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->finish()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->getAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    const-string/jumbo v0, "sub_button_style"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$QueryAppDetailAsyncTask;

    invoke-direct {v0, p0, v3}, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$QueryAppDetailAsyncTask;-><init>(Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;B)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->b:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$QueryAppDetailAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->addObserver(Ljava/util/Observer;)V

    invoke-direct {p0}, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->b()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->deleteObserver(Ljava/util/Observer;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->removeObserver(Ljava/util/Observer;)V

    :cond_1
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p2, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getApp()Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getApp()Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getApp()Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getStatus()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getApp()Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isInstallBySystem()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->n:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$2;-><init>(Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getStatus()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->n:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$3;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$3;-><init>(Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
