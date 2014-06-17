.class public Lcom/alipay/mobile/appstoreapp/util/IconLoadHelper;
.super Ljava/lang/Object;
.source "IconLoadHelper.java"


# static fields
.field private static a:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/appstoreapp/util/IconLoadHelper;->a:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/StateListDrawable;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 76
    invoke-static {}, Lcom/alipay/mobile/appstoreapp/util/IconLoadHelper;->a()V

    .line 77
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 80
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    new-array v2, v6, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v2, v5

    invoke-direct {v1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 83
    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    new-array v3, v6, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v3, v5

    invoke-direct {v2, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 84
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 85
    new-array v3, v6, [I

    const v4, 0x10100a1

    aput v4, v3, v5

    invoke-virtual {v0, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 86
    new-array v3, v6, [I

    const v4, 0x10100a7

    aput v4, v3, v5

    invoke-virtual {v0, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 87
    new-array v3, v6, [I

    const v4, 0x101009c

    aput v4, v3, v5

    invoke-virtual {v0, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 88
    new-array v2, v5, [I

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 89
    return-object v0
.end method

.method public static a(Landroid/graphics/Bitmap;Z)Landroid/graphics/drawable/StateListDrawable;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 59
    invoke-static {}, Lcom/alipay/mobile/appstoreapp/util/IconLoadHelper;->a()V

    .line 60
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 63
    if-eqz p1, :cond_0

    .line 65
    :goto_0
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 66
    new-array v2, v3, [I

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 67
    return-object v1

    .line 63
    :cond_0
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private static a()V
    .locals 2

    .prologue
    .line 17
    sget-object v0, Lcom/alipay/mobile/appstoreapp/util/IconLoadHelper;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 18
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/openplatform/R$drawable;->d:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/appstoreapp/util/IconLoadHelper;->a:Landroid/graphics/drawable/Drawable;

    .line 21
    :cond_0
    return-void
.end method
