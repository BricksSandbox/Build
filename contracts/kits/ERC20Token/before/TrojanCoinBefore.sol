
pragma solidity ^0.6.6;

import "../../../../contracts/interfaces/basic/safemath.sol";


    // ERC20 Token Smart Contract
    contract TrojanCoinAfter {

        string public constant name = "ExampleToken";
        string public constant symbol = "EXMP";
        uint8 public constant decimals = 18;
        uint public _totalSupply = 1000000000000000000000000;

        using SafeMath for uint256;
        address public owner;

         modifier onlyOwner() {
            if (msg.sender != owner) {
                revert();
            }
             _;
         }


        mapping(address => uint256) balances;

        mapping(address => mapping(address=>uint256)) allowed;



        // Constructor
        constructor() public payable {

            owner = msg.sender;
            balances[address(this)] = _totalSupply;
            transfer( msg.sender, _totalSupply);
        }

        function totalSupply() public view returns(uint256){
            return _totalSupply;
        }

        function balanceOf(address _owner) public view returns(uint256){
            return balances[_owner];
        }


        function transfer(address _to, uint256 _value)  returns(bool) {
                    require(balances[msg.sender] >= _value && _value > 0 );
                    balances[msg.sender] = balances[msg.sender].sub(_value);
                    balances[_to] = balances[_to].add(_value);
                    Transfer(msg.sender, _to, _value);
                    return true;
          }


        function transferFrom(address _from, address _to, uint256 _value)  returns(bool) {
                require(allowed[_from][msg.sender] >= _value && balances[_from] >= _value && _value > 0);
                balances[_from] = balances[_from].sub(_value);
                balances[_to] = balances[_to].add(_value);
                allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
                Transfer(_from, _to, _value);
                return true;
        }


    function approve(address _spender, uint256 _value) public returns(bool){
        allowed[msg.sender][_spender] = _value;
        Approval(msg.sender, _spender, _value);
        return true;
    }


    function allowance(address _owner, address _spender) public view returns(uint256){
        return allowed[_owner][_spender];
    }

    event Transfer(address indexed _from, address indexed _to, uint256 _value);
    event Approval(address indexed _owner, address indexed _spender, uint256 _value);

}
