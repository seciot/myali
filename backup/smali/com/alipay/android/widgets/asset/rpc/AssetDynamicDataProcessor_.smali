.class public final Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor_;
.super Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor_;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor_;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor_;->a:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor_;
    .locals 1

    new-instance v0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor_;

    invoke-direct {v0, p0}, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
