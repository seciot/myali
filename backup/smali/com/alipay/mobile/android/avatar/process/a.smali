.class final Lcom/alipay/mobile/android/avatar/process/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity_;I)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/android/avatar/process/a;->b:Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity_;

    iput p2, p0, Lcom/alipay/mobile/android/avatar/process/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/android/avatar/process/a;->b:Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity_;

    iget v1, p0, Lcom/alipay/mobile/android/avatar/process/a;->a:I

    invoke-static {v0, v1}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity_;->a(Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity_;I)V

    return-void
.end method
