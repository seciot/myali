.class public Lcom/alipay/mobile/alipassapp/ui/TravelUserGuideActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/TravelUserGuideActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/TravelUserGuideActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/mobile/alipassapp/ui/TravelUserGuideActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/TravelUserGuideActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/alipassapp/ui/TravelUserGuideActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/TravelUserGuideActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/alipassapp/R$layout;->main_travel_user_guide:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/TravelUserGuideActivity;->setContentView(I)V

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->user_guide:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/TravelUserGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/fi;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/alipassapp/ui/fi;-><init>(Lcom/alipay/mobile/alipassapp/ui/TravelUserGuideActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
