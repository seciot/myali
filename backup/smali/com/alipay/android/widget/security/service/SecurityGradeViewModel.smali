.class public Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x57b35795b6885b1cL


# instance fields
.field private cellphone:Ljava/lang/String;

.field private firstBlock:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isShowArrowBaoling:Ljava/lang/Boolean;

.field private isShowArrowBindPhone:Ljava/lang/Boolean;

.field private isShowArrowCertified:Ljava/lang/Boolean;

.field private isShowArrowGestureSet:Ljava/lang/Boolean;

.field private isShowArrowPortraitSet:Ljava/lang/Boolean;

.field private isShowArrowPushSet:Ljava/lang/Boolean;

.field private isShowArrowTIDSet:Ljava/lang/Boolean;

.field private level:Ljava/lang/String;

.field private logonId:Ljava/lang/String;

.field private memo:Ljava/lang/String;

.field private score:I

.field private secondBlock:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private showWarnTxt:I

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->firstBlock:Ljava/util/Map;

    iput-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->secondBlock:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getCellphone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->cellphone:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstBlock()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->firstBlock:Ljava/util/Map;

    return-object v0
.end method

.method public getIsShowArrowBaoling()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->isShowArrowBaoling:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIsShowArrowBindPhone()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->isShowArrowBindPhone:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIsShowArrowCertified()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->isShowArrowCertified:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIsShowArrowGestureSet()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->isShowArrowGestureSet:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIsShowArrowPortraitSet()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->isShowArrowPortraitSet:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIsShowArrowPushSet()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->isShowArrowPushSet:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIsShowArrowTIDSet()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->isShowArrowTIDSet:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLevel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->level:Ljava/lang/String;

    return-object v0
.end method

.method public getLogonId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->logonId:Ljava/lang/String;

    return-object v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->memo:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->score:I

    return v0
.end method

.method public getSecondBlock()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->secondBlock:Ljava/util/Map;

    return-object v0
.end method

.method public getShowWarnTxt()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->showWarnTxt:I

    return v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setCellphone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->cellphone:Ljava/lang/String;

    return-void
.end method

.method public setFirstBlock(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->firstBlock:Ljava/util/Map;

    return-void
.end method

.method public setIsShowArrowBaoling(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->isShowArrowBaoling:Ljava/lang/Boolean;

    return-void
.end method

.method public setIsShowArrowBindPhone(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->isShowArrowBindPhone:Ljava/lang/Boolean;

    return-void
.end method

.method public setIsShowArrowCertified(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->isShowArrowCertified:Ljava/lang/Boolean;

    return-void
.end method

.method public setIsShowArrowGestureSet(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->isShowArrowGestureSet:Ljava/lang/Boolean;

    return-void
.end method

.method public setIsShowArrowPortraitSet(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->isShowArrowPortraitSet:Ljava/lang/Boolean;

    return-void
.end method

.method public setIsShowArrowPushSet(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->isShowArrowPushSet:Ljava/lang/Boolean;

    return-void
.end method

.method public setIsShowArrowTIDSet(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->isShowArrowTIDSet:Ljava/lang/Boolean;

    return-void
.end method

.method public setLevel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->level:Ljava/lang/String;

    return-void
.end method

.method public setLogonId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->logonId:Ljava/lang/String;

    return-void
.end method

.method public setMemo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->memo:Ljava/lang/String;

    return-void
.end method

.method public setScore(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->score:I

    return-void
.end method

.method public setSecondBlock(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->secondBlock:Ljava/util/Map;

    return-void
.end method

.method public setShowWarnTxt(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->showWarnTxt:I

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->userName:Ljava/lang/String;

    return-void
.end method
