.class public Lcom/alipay/android/mini/event/MiniGuideEventArgs;
.super Lcom/alipay/android/mini/event/MiniEventArgs;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/alipay/android/mini/event/ActionType;->p:Lcom/alipay/android/mini/event/ActionType;

    invoke-direct {p0, v0}, Lcom/alipay/android/mini/event/MiniEventArgs;-><init>(Lcom/alipay/android/mini/event/ActionType;)V

    iput-object p1, p0, Lcom/alipay/android/mini/event/MiniGuideEventArgs;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDataByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/event/MiniGuideEventArgs;->a:Ljava/lang/String;

    return-object v0
.end method
