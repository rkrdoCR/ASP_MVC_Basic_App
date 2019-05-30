using GS_CodingChallenge.Models;
using GS_CodingChallenge.Repository;
using GS_CodingChallenge.Services;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Moq;
using System.Collections.Generic;

namespace GS_CodingChallenge.Tests
{
    [TestClass]
    public class DefaultControllerServiceTests
    {
        private Mock<IDefaultRepository> _defaultRepository;

        private IDefaultControllerService _service;

        [TestInitialize]
        public void Initialize()
        {
            _defaultRepository = new Mock<IDefaultRepository>();            
        }

        [TestMethod]
        public void GetUsers_ShouldReturnThreeUsers()
        {
            _defaultRepository.Setup(r => r.GetUsers())
                .Returns(() => {
                    return new List<User>(){
                        new User() { FirstName="Ricardo", LastName="Alfaro"},
                        new User() { FirstName="Juan", LastName="Perez"},
                        new User() { FirstName="John", LastName="Doe" }
                    };
                });

            _service = new DefaultControllerService(_defaultRepository.Object);

            List<User> result = _service.GetUsers();

            Assert.AreEqual(result.Count, 3);
        }
    }    
}
