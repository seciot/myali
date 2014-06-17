.class public final enum Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$FragId;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "FragId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$FragId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$FragId;

.field public static final enum CheckId:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$FragId;

.field public static final enum CheckSMS:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$FragId;

.field public static final enum SetPwd:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$FragId;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$FragId;

    const-string/jumbo v1, "CheckSMS"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$FragId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$FragId;->CheckSMS:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$FragId;

    new-instance v0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$FragId;

    const-string/jumbo v1, "CheckId"

    invoke-direct {v0, v1, v3}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$FragId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$FragId;->CheckId:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$FragId;

    new-instance v0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$FragId;

    const-string/jumbo v1, "SetPwd"

    invoke-direct {v0, v1, v4}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$FragId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$FragId;->SetPwd:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$FragId;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$FragId;

    sget-object v1, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$FragId;->CheckSMS:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$FragId;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$FragId;->CheckId:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$FragId;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$FragId;->SetPwd:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$FragId;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$FragId;->$VALUES:[Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$FragId;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$FragId;
    .locals 1

    const-class v0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$FragId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$FragId;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$FragId;
    .locals 1

    sget-object v0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$FragId;->$VALUES:[Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$FragId;

    invoke-virtual {v0}, [Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$FragId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$FragId;

    return-object v0
.end method
